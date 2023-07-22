package com.kh.app.search.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("search")
@Controller
public class SearchController {

	@GetMapping("result")
	public String searchResult() {
		return "search/result";
	}
	
	
}
