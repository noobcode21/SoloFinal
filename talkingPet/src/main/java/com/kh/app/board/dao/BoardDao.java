package com.kh.app.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.app.board.vo.BoardVo;
import com.kh.app.page.vo.PageVo;

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
	
	
	
}
