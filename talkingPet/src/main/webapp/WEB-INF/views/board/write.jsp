<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/board/write.css" rel="stylesheet">
</head>

<body>
    <div class="v99_2">
        <div class="v89_985"></div>
        <form class="v91_6" method="post" action="/app/board/write" enctype="multipart/form-data">
            <input type="text" name="boardTitle" class="titlearea" placeholder="제목을 작성해주세요">
            <br>
            <br>
            <br>
            <textarea name="boardContent" class="contentarea" placeholder="내용을 작성해주세요"></textarea>
            <br>
            <input type="file" value="파일첨부" class="inputfile">
            <input type="submit" value="작성하기" class="write">
        </form>
        <span class="v89_991">자유게시판 작성</span>
        <div class="v89_992"></div>
        <div class="v89_1170"></div>
        <div class="v89_1171"></div>
        <div class="v89_1172"></div>
        <div class="v89_1173"></div>
        <div class="v89_1174"></div>
        <div class="v89_1175"></div>
        <div class="v89_1176"></div>
        <div class="v89_1177"></div>
        <div class="v89_1178"></div>
        <div class="v89_1179"></div><span class="v89_1180">마이페이지</span>
        <span class="v89_1181">로그아웃</span>
        <span class="v89_1182">공지사항</span>
        <span class="v89_1183">자유게시판</span>
        <span class="v89_1184">펫 스토어</span>
        <span class="v89_1185">더 보기</span>
        <a href="/app/main/home">
            <img class="v89_1186" src="${pageContext.request.contextPath}/resources/img/pageimg/logo.png">
        </a>
    </div>
</body>

</html>