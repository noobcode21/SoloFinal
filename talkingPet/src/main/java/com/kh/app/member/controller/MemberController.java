package com.kh.app.member.controller;

import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@GetMapping("join")
	public String join() {
		return "member/join";
	}//get join
	
	@PostMapping("join")
	public String join(String memberId, String memberPwd, String pwdconfirm, String memberNick, String email) {
	
		System.out.println("id : " + memberId);
		System.out.println("pwd : " + memberPwd);
		System.out.println("pwdconfirm : " + pwdconfirm);
		System.out.println("nick : " + memberNick);
		System.out.println("email : " + email);
		
		if(memberId == null) {
			System.out.println("아이디 값 없음");
			return "member/join";
		}
		else if(memberId.length() < 6) {
			System.out.println("아이디 6 자리 이상 안됨");
			return "member/join";
		}
		else if(memberPwd.length() < 6) {
			System.out.println("비밀번호 6자리 이상 안됨");
			return "member/join";
		}
		else if(!memberPwd.equals(pwdconfirm)) {
			System.out.println("비밀번호 확인 매치가 안됨");
			return "member/join";
		}
		else if(memberNick.length() < 2 || memberNick.length() > 10) {
			System.out.println("닉네임 짧거나 너무 김");
			return "member/join";
		}
		else if(email.length() < 1) {
			System.out.println("이메일 값 없음");
			return "member/join";
		}
		else {
			System.out.println("회원가입 기능 구현");
			return "redirect:/main/screen";			
		}
		
	}//post login 조건 후 else에서 기능 작동 구현 요망
	
	@GetMapping("findid")
	public String findid() {
		return "member/findid";
	}//get findid
	
	@GetMapping("findpwd")
	public String findpwd() {
		return "member/findpwd";
	}//get findpwd
	
	@GetMapping("changepwd")
	public String changePwd() {
		return "member/changepwd";
	}//get changepwd
	
	@GetMapping("yourid")
	public String yourid() {
		return "member/yourid";
	}//get yourid
	
	
}
