package com.kh.app.mainscreen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main")
public class MainScreenController {

	@GetMapping("screen")
	public String mainScreen() {
		return "main/screen";
	}
	
	@GetMapping("findaccount")
	public String findaccount() {
		return "main/findaccount";
	}
	
	@GetMapping("home")
	public String home() {
		return "main/home";
	}
	
	
	
}
