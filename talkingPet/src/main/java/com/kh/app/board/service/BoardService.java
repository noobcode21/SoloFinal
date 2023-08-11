package com.kh.app.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.app.board.dao.BoardDao;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.member.vo.MemberVo;
import com.kh.app.page.vo.PageVo;
import com.kh.app.reply.vo.ReplyVo;

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

	public int boardListCnt() {

		return dao.boardListCount(sst);
		
	}

	public List<BoardVo> getBoardList(PageVo pv) {

		return dao.getBoardList(sst, pv);
	
	}

	public BoardVo BoardDetail(int boardNo) {

		BoardVo vo = dao.BoardDetail(sst, boardNo);
		
		if(vo != null) {
			dao.IncreaseHit(sst, boardNo);
		}
		
		return vo;
		
	}

	public List<ReplyVo> replyList(int boardNo) {

		return dao.replyList(sst, boardNo);
		
	}

	public int UpdateBoard(BoardVo boardVo) {

		return dao.UpdateBoard(sst, boardVo);
	
	}

	public int DeleteBoard(int boardNo) {
		
		return dao.DeleteBoard(sst, boardNo);
		
	}
	
	
	
	
}
