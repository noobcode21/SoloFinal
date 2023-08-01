package com.kh.app.member.controller;

import java.io.IOException;
import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.app.member.service.MemberService;
import com.kh.app.member.vo.MemberVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("member")
public class MemberController {
	
	private final MemberService ms;
	
	@GetMapping("join")
	public String join() {
		return "member/join";
	}//get join
	
	@PostMapping("join")
	public String join(MemberVo vo, String pwdconfirm) {
	
		String memberId = vo.getMemberId();
		String memberPwd = vo.getMemberPwd();
		String memberNick = vo.getMemberNick();
		String email = vo.getEmail();
		
		log.info("id : " + memberId);
		log.info("pwd : " + memberPwd);
		log.info("pwdconfirm : " + pwdconfirm);
		log.info("nick : " + memberNick);
		log.info("email : " + email);
		
		if(memberId == null) {
			log.info("아이디 값 없음");
			return "member/join";
		}
		else if(memberId.length() < 6) {
			log.info("아이디 6 자리 이상 안됨");
			return "member/join";
		}
		else if(memberPwd.length() < 6) {
			log.info("비밀번호 6자리 이상 안됨");
			return "member/join";
		}
		else if(!memberPwd.equals(pwdconfirm)) {
			log.info("비밀번호 확인 매치가 안됨");
			return "member/join";
		}
		else if(memberNick.length() < 2 || memberNick.length() > 10) {
			log.info("닉네임 짧거나 너무 김");
			return "member/join";
		}
		else if(email.length() < 1) {
			log.info("이메일 값 없음");
			return "member/join";
		}
		else {
			log.info("회원가입 기능 구현");
			
			int result = ms.join(vo);
			log.info("join result : " + result);
			if(result != 1) {
				throw new IllegalStateException("join failed");
			}
			
			return "redirect:/main/screen";			
		
		}
		
	}//post login 조건 후 else에서 기능 작동 구현 요망
	
	@PostMapping("login")
	public String login(MemberVo vo, HttpSession session) {
		MemberVo loginMember = ms.login(vo);
		log.info("loginResult : " + loginMember);
		session.setAttribute("loginMember", loginMember);
		if(loginMember == null) {
			throw new RuntimeException("login failed");
		}
		
		log.info("login success");
		
		return "redirect:/main/home";
	
	}
	
	@GetMapping("findid")
	public String findid() {
		return "member/findid";
	}//get findid
	
	@PostMapping("findid")
	public String findid(MemberVo vo, HttpServletRequest req) throws Exception {
		
		MemberVo findid = ms.findId(vo);
		
		log.info("id : " + findid);
		
		if(findid == null) {
			throw new IllegalStateException("id isn't exist");
		}

		req.setAttribute("findid", findid);
		
		return "member/yourid";
		
	}
	
	@GetMapping("findpwd")
	public String findPwd() {
		return "member/findpwd";
	}//get findpwd
	
	@PostMapping("findpwd")
	public String findPwd(MemberVo vo, HttpSession session) {
		
		MemberVo findPwd = ms.findPwd(vo);
		
		if(findPwd == null) {
			throw new IllegalStateException("account not founded");
		}
		
		session.setAttribute("findPwd", findPwd);
		
		return "redirect:/member/changepwd";
		
	}
	
	@GetMapping("changepwd")
	public String changePwd() {
		return "member/changepwd";
	}//get changepwd
	
	@PostMapping("changepwd")
	public String changePwd(String memberPwd, String confirmpwd, HttpSession session) {
		
		MemberVo findPwd = (MemberVo) session.getAttribute("findPwd");
		String memberId = findPwd.getMemberId();
		String memberNick = findPwd.getMemberNick();
		String email = findPwd.getEmail();
		
		log.info(memberId);
		log.info(memberPwd);
		log.info(memberNick);
		log.info(email);		
		
		MemberVo vo = new MemberVo();
		vo.setMemberId(memberId);
		vo.setMemberPwd(memberPwd);
		vo.setMemberNick(memberNick);
		vo.setEmail(email);
		
		if(memberPwd.length() < 6) {
			log.info("비밀번호 6자리 이상 안됨");
			return "member/join";
		}
		else if(!memberPwd.equals(confirmpwd)) {
			log.info("비밀번호 확인 매치가 안됨");
			return "member/join";
		}
		else {
			
			int result = ms.changePwd(vo);
			
			log.info("changePwd result : " + result);
			
			if(result != 1) {
				throw new IllegalStateException("change password failed");
			}
			
			return "main/screen";
			
		}
		
	}
	
	@GetMapping("yourid")
	public String yourid() {
		return "member/yourid";
	}//get yourid
	
	
}
