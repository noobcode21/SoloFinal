package com.kh.app.board.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.app.board.dao.BoardDao;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.member.vo.MemberVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
@Transactional
public class BoardService {
	
	private final SqlSessionTemplate sst;
	private final BoardDao dao;
	
	public int boardWrite(BoardVo vo) {
		
		return dao.boardWrite(sst, vo);
		
	}
	
	
	
	
}
