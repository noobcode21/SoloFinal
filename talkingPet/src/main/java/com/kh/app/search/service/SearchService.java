package com.kh.app.search.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.app.search.dao.SearchDao;
import com.kh.app.search.vo.SearchVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class SearchService {

	private final SearchDao dao;
	private final SqlSessionTemplate sst;
	
	public SearchVo searchResult(SearchVo vo) {

		return dao.searchResult(sst, vo);
	
	}
	
	
	
	
}
