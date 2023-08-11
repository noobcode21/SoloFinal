package com.kh.app.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.app.board.vo.BoardVo;
import com.kh.app.page.vo.PageVo;
import com.kh.app.reply.vo.ReplyVo;

@Repository
public class BoardDao {

	public int boardWrite(SqlSessionTemplate sst, BoardVo vo) {
		return sst.insert("board.write", vo);
	}

	public int boardListCount(SqlSessionTemplate sst) {
		return sst.selectOne("board.boardListCount");
	}

	public List<BoardVo> getBoardList(SqlSessionTemplate sst, PageVo pv) {
		return sst.selectList("board.getBoardList", pv);
	}

	public BoardVo BoardDetail(SqlSessionTemplate sst, int boardNo) {
		return sst.selectOne("board.boardDetail", boardNo);
	}

	public int IncreaseHit(SqlSessionTemplate sst, int boardNo) {
		return sst.update("board.increaseHit", boardNo);
	}

	public List<ReplyVo> replyList(SqlSessionTemplate sst, int boardNo) {
		return sst.selectList("board.replyList", boardNo);
	}

	public int UpdateBoard(SqlSessionTemplate sst, BoardVo boardVo) {
		return sst.update("board.updateBoard", boardVo);
	}

	public int DeleteBoard(SqlSessionTemplate sst, int boardNo) {
		return sst.update("board.deleteBoard", boardNo);
	}
	
	
	
}
