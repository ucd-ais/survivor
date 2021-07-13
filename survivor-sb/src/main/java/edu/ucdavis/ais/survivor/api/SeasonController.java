package edu.ucdavis.ais.survivor.api;

import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.ucdavis.ais.survivor.entity.Season;
import edu.ucdavis.ais.survivor.entity.repository.SeasonRepository;

@RestController
@RequestMapping("/seasons")
public class SeasonController {

	private final Logger logger = LoggerFactory.getLogger(SeasonController.class);

	@Autowired
	private SeasonRepository repository;

	@GetMapping
	public List<Season> getAll() {
		logger.info("finding all seasons");
		return repository.findAll();
	}

	@PostMapping
	public Season save(@Valid @RequestBody Season season) {
		logger.info("saving season {}", season.getNumber());
		return repository.save(season);
	}
}
