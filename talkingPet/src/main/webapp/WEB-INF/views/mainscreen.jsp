<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/home/mainscreen.css" rel="stylesheet">
</head>
<body>
	
	<div class="bigback">
		<div class="area1">
			<img alt="preimg" src="${pageContext.request.contextPath}/resources/img/pageimg/preimg.jpg" class="preimg">
		</div>
		<div class="area2">
			<div class="logoarea">
				<img alt="logo" src="${pageContext.request.contextPath}/resources/img/pageimg/logo.png" class="logoimg">
			</div>
			
			<div class="loginarea">
			
				<form action="/app/member/login" name="post" class="formarea">
					
					<span class="idword">
						아이디 
					</span>
					<span class="idarea">
						<input type="text" name="id" class="idinput">
					</span>
					
					<span class="pwdword">비밀번호</span>
					<span class="pwdarea">
						<input type="password" name="pwd" class="pwdinput">					
					</span>
					
					<span></span>
					<span class="submitarea">
						<input type="submit" value="login" class="logininput">				
					</span>
				</form>
			</div>
			
				<span class="joinareaword">계정이 기억나지 않으시거나 없으신가요?</span>
			<div class="joinarea">
				<div class="innerjoinarea">
					<span class="join"> <a class="innerjoin" href="/">회원가입</a> </span>
					<span class="seek"> <a class="innerseek" href="/">아이디/비밀번호 찾기</a> </span>
				</div>
			</div>
		</div>
	</div>

</body>
</html>