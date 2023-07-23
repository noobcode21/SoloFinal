package com.kh.app.qna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("qna")
@Controller
public class QnaController {

	@GetMapping("list")
	public String QnaList() {
		return "qna/list";
	}
	
}
