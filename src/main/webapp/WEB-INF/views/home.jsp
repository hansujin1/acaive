<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div> <!-- 검색창 -->
		<div class="searachBody">
			<div class="searachBody_inDiv">
				<h2>JJAL Collection</h2>
				<form class="search_form" action="search">
					<input class="search_input" type="text" placeholder="짤 검색" name="search">
				</form>
			</div>
		</div>
	</div>
	
	<div class="tableBigDiv">
		<div class="tableMiddleDiv">
			<c:if test="${not empty picture}">
				<c:forEach items="${picture}" var="p">
					<div class="tablesmallDiv">
						<a href="detailPage.go?p_no=${p.p_no}">
							<img src="resources/img/${p.img}" class="picture">
						</a>
					</div>
				</c:forEach>
			</c:if>
		</div>	
	</div>
</body>
</html>