package com.kh.app.board.controller;

import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.app.board.service.BoardService;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.member.vo.MemberVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@RequestMapping("board")
@Controller
@RequiredArgsConstructor
@Slf4j
public class BoardController {

	private final BoardService bs;
	
	@GetMapping("list")
	public String boardList() {
		return "board/list";
	}
	
	@GetMapping("write")
	public String boardWrite() {
		return "board/write";
	}
	
	@PostMapping("write")
	public String boardWrite(BoardVo vo, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		String memberNo = loginMember.getMemberNo();
		vo.setMemberNo(memberNo);
		
		int result = bs.boardWrite(vo);
		if(result != 1) {
			throw new IllegalStateException("writing board failed");
		}
		
		return "board/list";
		
	}
	
	
	
}
