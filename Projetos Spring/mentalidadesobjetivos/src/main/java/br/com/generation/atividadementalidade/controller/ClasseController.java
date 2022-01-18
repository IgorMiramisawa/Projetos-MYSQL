package br.com.generation.atividadementalidade.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

@RestController 
@RequestMapping ("/mentalidade")

public class ClasseController {
	
	@GetMapping
	public String mentalidade () {
		return "Habilidade atenção aos detalhes e mentalidade de persistência" ;
	}

	
}
