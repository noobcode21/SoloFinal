package com.kh.app.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.app.notice.service.NoticeService;
import com.kh.app.notice.vo.NoticeVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("notice")
@Controller
@RequiredArgsConstructor
@Slf4j
public class NoticeController {

	private final NoticeService ns;
	
	@GetMapping("list")
	public String noticeList() {
		return "notice/list";
	}
	
	@GetMapping("write")
	public String noticeWrite() {
		return "notice/write";
	}
	
	@PostMapping("write")
	public String noticeWrite(NoticeVo vo) {
		
		int result = ns.noticeWrite(vo);
		if(result != 1) {
			throw new IllegalStateException("notice write failed");
		}
		
		return "notice/list";
		
	}
	
}
