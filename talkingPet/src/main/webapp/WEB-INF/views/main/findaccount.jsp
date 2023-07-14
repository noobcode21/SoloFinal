<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/home/findaccount.css" rel="stylesheet">
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
			
			<div class="findwhat">
			
				<div class="findid">
					<span class="findidword">아이디를 잊으셨나요?</span>	
					<a href="/app/member/findid" class="findidlink">아이디 찾기</a>	
				</div>
			
				<div class="findpwd">
					<span class="findpwdword">비밀번호를 잊으셨나요?</span>	
					<a href="/app/member/findpwd" class="findpwdlink">비밀번호 변경</a>		
				</div>
				
			</div>
			
			
		</div>
	</div>

</body>
</html>