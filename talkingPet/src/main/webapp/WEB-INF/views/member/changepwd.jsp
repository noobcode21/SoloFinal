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
				
				<form action="/app/member/changepwd" method="POST" class="formarea">
					
					<span class="idword">비밀번호</span>
					<span class="idarea">
						<input type="password" name="pwd" class="idinput">
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
</html>