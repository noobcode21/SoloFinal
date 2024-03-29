<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/member/changepwd.css" rel="stylesheet">
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
			
			<div class="loginarea">
				
				<form action="/app/member/changepwd" method="POST" class="formarea" onsubmit="return confirm();">
					
					<span class="idword">비밀번호</span>
					<span class="idarea">
						<input type="password" name="memberPwd" class="idinput">
					</span>
					
					<span class="pwdword">비밀번호 확인</span>
					<span class="idarea">
						<input type="password" name="confirmpwd" class="idinput">
					</span>
					
					<span></span>
					
					<span class="submitarea">
						<input type="submit" value="비밀번호 변경" class="logininput">				
					</span>
				</form>
			</div>
			
		</div>
	</div>

</body>

<script type="text/javascript">

function confirm() {
	
	var memberPwd = document.querySelector('input[name=memberPwd]').value;
	var confirmpwd = document.querySelector('input[name=confirmpwd]').value;
    
	console.log(memberPwd);
	console.log(confirmpwd);
	    
	if(memberPwd.length < 6) {
		alert('입력한 비밀번호가 6글자 이상이어야 합니다.');
		return false;
	}
	
	if(memberPwd != confirmpwd) {
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}


	alert('비밀번호 변경 신청 성공');
	return true;
	
}
</script>

</html>