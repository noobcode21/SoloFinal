<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/member/findid.css" rel="stylesheet">
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
				
				<form action="/app/member/findpwd" method="POST" class="formarea">
					
					<span class="idword">아이디</span>
					<span class="idarea">
						<input type="text" name="id" class="idinput">
					</span>
					
					<span class="idword">닉네임</span>
					<span class="idarea">
						<input type="text" name="nick" class="idinput">
					</span>
					
					<span class="pwdword">이메일</span>
					<span class="pwdarea">
						<input type="text" name="email" class="pwdinput">					
					</span>
					
					<span></span>
					<span class="submitarea">
						<input type="submit" value="비밀번호 찾기" class="logininput">				
					</span>
				</form>
			</div>
			
		</div>
	</div>

</body>
</html>