package com.kh.app.notice.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.app.notice.vo.NoticeVo;

@Repository
public class NoticeDao {

	public int noticeWrite(SqlSessionTemplate sst, NoticeVo vo) {
		return sst.insert("notice.write", vo);
	}

}
