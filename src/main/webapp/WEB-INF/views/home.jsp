<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div> <!-- 검색창 -->
		<div class="searachBody">
			<div class="searachBody_inDiv">
				<h2>JJAL Collection</h2>
				<form class="search_form">
					<input class="search_input" type="text" placeholder="짤 검색">
				</form>
				<div class="input_under">
					<div class="input_text">전체</div>
					<div class="input_text">솔로</div>
					<div class="input_text">빡침</div>
					<div class="input_text">분노</div>
					<div class="input_text">놀람</div>
					<div class="input_text">눈물</div>
					<div class="input_text">표정</div>
					<div class="input_text">병맛</div>
					<div class="input_text">섭섭</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="tableBigDiv">
		<div class="tableMiddleDiv">
			<c:forEach items="${picture}" var="p">
				<div class="tablesmallDiv">
					<img src="resources/img/${p.img }" class="picture">
				</div>
			</c:forEach>
		</div>	
	</div>
</body>
</html>