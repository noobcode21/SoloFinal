package com.kh.app.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.app.member.vo.MemberVo;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MemberDao {
	
	
	public int join(SqlSessionTemplate sst, MemberVo vo) {
		return sst.insert("member.join", vo);
	}

	public MemberVo login(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("member.login", vo);
	}

	public MemberVo findId(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("member.findid", vo);
	}

	public MemberVo findPwd(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("member.findpwd", vo);
	}

	public int changePwd(SqlSessionTemplate sst, MemberVo vo) {
		return sst.update("member.changepwd", vo);
	}
	
	
	
}
