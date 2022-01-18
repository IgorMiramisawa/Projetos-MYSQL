package com.generation.mentalidades.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping ("/mentalidade")

public class MetodoController {
	
	@GetMapping
	public String mentalidade () {
		return "Habilidade é atenção aos detalhes e mentalidade é a persistência";
	}

}
