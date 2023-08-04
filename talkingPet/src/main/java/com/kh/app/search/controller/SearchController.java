package com.kh.app.search.controller;

import javax.naming.directory.SearchResult;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.app.search.service.SearchService;
import com.kh.app.search.vo.SearchVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("search")
@Controller
@RequiredArgsConstructor
@Slf4j
public class SearchController {

	private final SearchService ss;
	
	@GetMapping("result")
	public String searchResult() {
		return "search/result";
	}

	@PostMapping("result")
	public String searchResult(SearchVo vo, HttpServletRequest req) {
		
		SearchVo searchResult = ss.searchResult(vo);
		
		if(searchResult == null) {
			throw new IllegalStateException("No search result founded...");
		}
		
		req.setAttribute("searchResult", searchResult);
		
		return "search/result";
		
	}
	
	
}
