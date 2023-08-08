<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/board/list.css" rel="stylesheet">
</head>

<body>
    <div class="v92_12">
        <table class="v91_4">
            <tr>
                <th class="writer">작성자</th>
                <th class="title">제목</th>
                <th class="enrolldate">작성일</th>
                <th class="hit">조회수</th>
            </tr>
			<c:forEach items="${bList}" var="bList">
	            <tr>
	                <th>${bList.memberNick}</th>
	                <th>${bList.boardTitle}</th>
	                <th>${bList.enrollDate }</th>
	                <th>${bList.hit }</th>
	            </tr>			
			</c:forEach>
        </table>
        <div class="v91_5">
            <div class="page_wrap">
                <div class="page_nation">
                <c:if test="${pv.currentPage > 1}">
					<a href="${pageContext.request.contextPath}/board/list?page=${pv.currentPage-1}">
						<button style="width: 100%; height: 100%; font-size: 20px;"><</button>
					</a>
				</c:if>
				<c:forEach begin="${pv.startPage}" end="${pv.endPage}" var="num">
					<c:if test="${pv.currentPage ne num}">
						<a href="${pageContext.request.contextPath}/board/list?page=${num}">
							<button style="width: 100%; height: 100%; font-size: 20px;">${num}</button>
						</a>
					</c:if>
					<c:if test="${pv.currentPage eq num}">
						<a>
							<button class="active" style="width: 100%; height: 100%; font-size: 20px;">${num}</button>
						</a>
					</c:if>
				</c:forEach>
				<c:if test="${pv.currentPage < pv.maxPage}">
					<a href="${pageContext.request.contextPath}/board/list?page=${pv.currentPage+1}">
						<button style="width: 100%; height: 100%; font-size: 20px;">></button>
					</a>
				</c:if>
                </div>
             </div>
        </div>
        <div class="v89_860"></div>
        <span class="v89_861">글 작성</span>
        <span class="v89_863">자유게시판</span>
        <div class="v89_864"></div>
		
        <div class="v89_1153"></div>
        <div class="v89_1154"></div>
        <div class="v89_1155"></div>
        <div class="v89_1156"></div>
        <div class="v89_1157"></div>
        <div class="v89_1158"></div>
        <a href="/" class="v89_1159">공지사항</a>
        <a href="/" class="v89_1160">자유게시판</a>
        <a href="/" class="v89_1161">펫 스토어</a>
        <a href="/" class="v89_1162">더 보기</a>
       	
        <a href="/app/mypage/main" class="v89_1163">마이페이지</a>
        <a href="/" class="v89_1164">로그아웃</a>

		<a href="/app/main/home">
	        <img alt="" src="${pageContext.request.contextPath}/resources/img/pageimg/logo.png" class="v89_1169">
       	</a>
    </div>
    
</body>

</html>