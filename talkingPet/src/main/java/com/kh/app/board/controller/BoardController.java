package com.kh.app.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("board")
@Controller
public class BoardController {

	@GetMapping("list")
	public String boardList() {
		return "board/list";
	}
	
	@GetMapping("write")
	public String boardWrite() {
		return "board/write";
	}
	
	
}
