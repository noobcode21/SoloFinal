<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/member/join.css" rel="stylesheet">
</head>
<body>
	
	<div class="bigback">
		<div class="area1">
			<img alt="preimg" src="${pageContext.request.contextPath}/resources/img/pageimg/preimg.jpg" class="preimg">
		</div>
		<div class="area2">
			<div class="logoarea">
				<a href="/app/main/screen">
					<img alt="logo" src="${pageContext.request.contextPath}/resources/img/pageimg/logo.png" class="logoimg">
				</a>
			</div>
			
			<div class="joinarea">
			
				<form action="/app/member/join" method="POST" class="formarea" onsubmit="return confirm();">
					
					<span class="idword">아이디</span>
					<span class="idarea">
						<input type="text" name="memberId" class="idinput">
					</span>
					
					<span class="pwdword">비밀번호</span>
					<span class="pwdarea">
						<input type="password" name="memberPwd" class="pwdinput">					
					</span>
					
					<span class="pwdcheckword">비밀번호 확인</span>
					<span class="pwdcheckarea">
						<input type="password" name="pwdconfirm" class="checkpwd">					
					</span>
					
					<span class="emailword">닉네임</span>
					<span class="emailarea">
						<input type="text" name="memberNick" class="emailinput">					
					</span>

					<span class="emailword">이메일</span>
					<span class="emailarea">
						<input type="text" name="email" class="emailinput">					
					</span>
					
					<span></span>
					<span class="submitarea">
						<input type="submit" value="가입" class="confirminput">					
					</span>
					
				</form>
			</div>
			
			
		</div>
	</div>

</body>

<script type="text/javascript">

function confirm() {
	
	var id = document.querySelector('input[name=memberId]').value;
	var pwd = document.querySelector('input[name=memberPwd]').value;
	var pwdconfirm = document.querySelector('input[name=pwdconfirm]').value;
	var nick = document.querySelector('input[name=memberNick]').value;
	var email = document.querySelector('input[name=email]').value;
    
	console.log(id);
	console.log(pwd);
	console.log(pwdconfirm);
	console.log(email);
	
	console.log(id.length);
	console.log(pwd.length);
	console.log(pwdconfirm.length);
	console.log(email.length);
    
	if(id.length < 6){
		alert('입력한 아이디는 6자 이상이어야 합니다.');
		return false;
	}
	    
	if(pwd.length < 6) {
		alert('입력한 비밀번호가 6글자 이상이어야 합니다.');
		return false;
	}
	
	if( pwd != pwdconfirm ) {
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	
	if(nick.length < 2 || nick.length > 10) {
		alert('닉네임을 2자 이상 10자 이하로 만들어주세요.');
		return false;
	}

	if(email.length < 1){
		alert('이메일을 작성해주세요.');
		return false;
	}

	alert('회원 가입 신청 성공');
	return true;
	
}
</script>

</html>
