package edu.ucdavis.ais.survivor.entity.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.ucdavis.ais.survivor.entity.Season;

@Repository
public interface SeasonRepository extends JpaRepository<Season, Long> {

}
