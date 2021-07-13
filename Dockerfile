ARG JAVA_IMAGE=openjdk:8u292-jdk
ARG NODE_IMAGE=node:14.17-alpine3.14
ARG LINUX_IMAGE=alpine:3.13.5
ARG SB_SOURCE=survivor-sb
ARG NG_SOURCE=survivor-ng
ARG CONTEXT_PATH

FROM ${JAVA_IMAGE} as sb-build
ARG SB_SOURCE
WORKDIR /build
COPY ${SB_SOURCE}/.mvn .mvn
COPY ${SB_SOURCE}/mvnw ${SB_SOURCE}/pom.xml ./
RUN chmod 755 mvnw && ./mvnw -B -e -C -T 1C org.apache.maven.plugins:maven-dependency-plugin:3.0.2:go-offline
COPY ${SB_SOURCE}/. .
RUN chmod 755 mvnw && ./mvnw clean package -Dmaven.test.skip=true

FROM ${NODE_IMAGE} AS ng-build
ARG NG_SOURCE
WORKDIR /build
ENV PATH /build/node_modules/.bin:$PATH
COPY ${NG_SOURCE}/package.json ${NG_SOURCE}/package-lock.json ./
RUN npm ci
RUN ngcc
COPY ${NG_SOURCE}/. .
RUN npm run build -- --prod

FROM ${JAVA_IMAGE} 
ARG NG_SOURCE
WORKDIR /app
COPY --from=sb-build /build/target/*.jar app.jar
COPY --from=ng-build /build/dist/${NG_SOURCE} ./site
ENV CONTEXT_PATH=${CONTEXT_PATH}
ENTRYPOINT [ \
    "java", \
    "-Xms64m", "-Xmx512m", "-XX:MetaspaceSize=96M", "-XX:MaxMetaspaceSize=256m", \
    "-jar", "app.jar", \
    "--spring.resources.static-locations=file:site,classpath:/static", \
    "--server.servlet.context-path=${CONTEXT_PATH}" \
]

