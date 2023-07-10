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
		<div class="area1"></div>
		<div class="area2">
			<div class="logoarea"></div>
			
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
			
			<div class="joinarea"></div>
		</div>
	</div>

</body>
</html>