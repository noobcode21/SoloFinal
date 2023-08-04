package com.kh.app.notice.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.app.notice.dao.NoticeDao;
import com.kh.app.notice.vo.NoticeVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@Transactional
@RequiredArgsConstructor
@Slf4j
public class NoticeService {

	private final NoticeDao dao;
	private final SqlSessionTemplate sst;

	public int noticeWrite(NoticeVo vo) {

		return dao.noticeWrite(sst, vo);
		
	}
	
	
	
}
