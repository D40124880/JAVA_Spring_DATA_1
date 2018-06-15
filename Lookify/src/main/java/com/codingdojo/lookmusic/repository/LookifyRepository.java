package com.codingdojo.lookmusic.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.lookmusic.models.Music;

@Repository
public interface LookifyRepository extends CrudRepository<Music, Long>{
	
	List<Music> findAll();
	List<Music> findByArtistContaining(String search);
	List<Music> findAllByOrderByRatingDesc();
	
}
