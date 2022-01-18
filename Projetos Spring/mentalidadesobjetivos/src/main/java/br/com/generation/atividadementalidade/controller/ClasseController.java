package br.com.generation.atividadementalidade.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping

public class ClasseController {
	
	@GetMapping
	public String mentalidade () {
		return "H"
	}

	
}
