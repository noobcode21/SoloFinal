package com.kh.app.mainscreen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainScreenController {

	@GetMapping("mainscreen")
	public String home() {
		return "mainscreen";
	}
	
	
	
	
}
