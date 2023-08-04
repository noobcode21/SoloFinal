package com.kh.app.board.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.app.board.vo.BoardVo;

@Repository
public class BoardDao {

	public int boardWrite(SqlSessionTemplate sst, BoardVo vo) {
		
		return sst.insert("board.write", vo);
		
	}
	
	
	
}
