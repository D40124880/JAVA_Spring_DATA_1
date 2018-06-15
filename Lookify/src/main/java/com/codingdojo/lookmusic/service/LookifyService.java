package com.codingdojo.lookmusic.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.lookmusic.models.Music;
import com.codingdojo.lookmusic.repository.LookifyRepository;

@Service
public class LookifyService {
	private final LookifyRepository lookifyRepo;
	
	public LookifyService(LookifyRepository lookifyRepo) {
		this.lookifyRepo = lookifyRepo;
	}
	
	public List<Music> allMusic(){
		return lookifyRepo.findAll();
	}
	
	public Music createMusic(Music m) {
		return lookifyRepo.save(m);
	}
	
	public Music findMusic(Long id) {
		Optional<Music> optionalMusic = lookifyRepo.findById(id);
		if(optionalMusic.isPresent()) {
			return optionalMusic.get();
		} else {
			return null;
		}
	}
	
	public void deleteMuisc(Long id) {
		lookifyRepo.deleteById(id);
	}
	
	public Music updateMusic(Music m) {
		return lookifyRepo.save(m);
	}
	
	public List<Music> searchArtist(String search){
		return lookifyRepo.findByArtistContaining(search);
	}
	
	public List<Music> topTen(){
		return lookifyRepo.findAllByOrderByRatingDesc();
	}

}
