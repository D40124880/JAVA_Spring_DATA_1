package com.codingdojo.lang.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.lang.models.Language;
import com.codingdojo.lang.repository.LanguageRepository;

@Service
public class LanguageService {
	private final LanguageRepository langRepo;
	
	public LanguageService(LanguageRepository langRepo) {
		this.langRepo = langRepo;
	}
	
	public List<Language> allLanguages(){
		return langRepo.findAll();
	}
	
	public Language createLanguage(Language x) {
		return langRepo.save(x);
	}
	
	public Language findLanguage(Long id) {
		Optional<Language> optionalLang = langRepo.findById(id);
		
		if(optionalLang.isPresent()) {
			return optionalLang.get();
		} else {
			return null;
		}
	}
	
	public void deleteLanguage(Long id) {
		langRepo.deleteById(id);
	}
	
	public Language updateLanguage(Language y) {
		return langRepo.save(y);
	}
}
