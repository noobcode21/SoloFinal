package com.kh.app.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.app.member.dao.MemberDao;
import com.kh.app.member.vo.MemberVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class MemberService {
	
	private final SqlSessionTemplate sst;
	private final MemberDao dao;
	private final BCryptPasswordEncoder pwdEncoder;
	
	public int join(MemberVo vo) {
		
		String memberPwd = vo.getMemberPwd();
		String newMemberPwd = pwdEncoder.encode(memberPwd);
		vo.setMemberPwd(newMemberPwd);
		
		return dao.join(sst, vo);
		
	}
	
	public MemberVo login(MemberVo vo) {
		MemberVo loginMember = dao.login(sst, vo);
		
		boolean isMatch = pwdEncoder.matches(vo.getMemberPwd(), loginMember.getMemberPwd());
		
		if(!isMatch) {
			throw new RuntimeException("login pwd not matched");
		}
		return loginMember;
	}
	
	
	
	

	
	
}
