package com.kh.app.search.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.app.search.vo.SearchVo;

@Repository
public class SearchDao {

	public SearchVo searchResult(SqlSessionTemplate sst, SearchVo vo) {
		
		return sst.selectOne("search.search", vo);
		
	}

	
	
	
	
}
