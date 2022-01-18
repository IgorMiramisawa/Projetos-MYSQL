package com.generation.objetivo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping ("/objetivo")


public class MetodoController {
	@GetMapping
	public String objetivo () {
		return "Aprender a desenvolver com Spring Boot " ;
	}
}
