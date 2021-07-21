package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IshaTechController {

	@GetMapping("/hello")
	public String sayHello() {
		return "welcome to isha";
	}
}
