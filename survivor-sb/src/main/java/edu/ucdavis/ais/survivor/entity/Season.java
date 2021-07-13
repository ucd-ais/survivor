package edu.ucdavis.ais.survivor.entity;

import java.util.Objects;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
public class Season {

	@Id
	private UUID id;
	@NotNull
	private Long number;
	@NotEmpty
	@Size(max = 50)
	private String title;
	@NotEmpty
	@Size(max = 75)
	private String location;
	@NotEmpty
	@Size(max = 125)
	private String originalTribe;

	@PrePersist
	public void preparePersistAudit() {
		this.id = UUID.randomUUID();
	}

	public UUID getId() {
		return id;
	}

	public void setId(UUID id) {
		this.id = id;
	}

	public Long getNumber() {
		return number;
	}

	public void setNumber(Long number) {
		this.number = number;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getOriginalTribe() {
		return originalTribe;
	}

	public void setOriginalTribe(String originalTribe) {
		this.originalTribe = originalTribe;
	}

	@Override
	public int hashCode() {
		return Objects.hash(number);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Season other = (Season) obj;
		return Objects.equals(number, other.number);
	}

	@Override
	public String toString() {
		return "Season [id=" + id + ", number=" + number + ", title=" + title + "]";
	}

}
