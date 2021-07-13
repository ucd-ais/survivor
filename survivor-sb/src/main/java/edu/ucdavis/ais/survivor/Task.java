package edu.ucdavis.ais.survivor;

import java.util.UUID;
import java.util.stream.IntStream;

public class Task {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		IntStream.range(0, 40).mapToObj(i -> UUID.randomUUID()).forEach(System.out::println);
	}

}
