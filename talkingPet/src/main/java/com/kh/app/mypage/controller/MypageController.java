package com.kh.app.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("mypage")
public class MypageController {

	@GetMapping("main")
	public String mypageMain() {
		return "mypage/main";
	}
	
}
