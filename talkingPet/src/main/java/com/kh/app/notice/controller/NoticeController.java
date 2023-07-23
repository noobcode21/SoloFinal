package com.kh.app.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("notice")
@Controller
public class NoticeController {

	@GetMapping("list")
	public String noticeList() {
		return "notice/list";
	}
	
}
