package com.kh.app.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.app.board.service.BoardService;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.member.vo.MemberVo;
import com.kh.app.page.vo.PageVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("board")
@Controller
@RequiredArgsConstructor
@Slf4j
public class BoardController {

	private final BoardService bs;
	
	@RequestMapping("list")
	public String boardList(@RequestParam(defaultValue = "1") int page, Model model) {
		
		int count = bs.boardListCnt();
		PageVo pv = new PageVo(count, page, 10, 10);
		
		List<BoardVo> bList = bs.getBoardList(pv);
		
		if(bList == null) {
			log.info("board List id null");
		}
		
		model.addAttribute("pv", pv);
		model.addAttribute("bList", bList);
		
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
		
		return "redirect:/board/list";
		
	}
	
	
	
}
