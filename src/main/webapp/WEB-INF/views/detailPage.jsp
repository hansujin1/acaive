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
<div>
	<div class="download">
		<span>
			<button class="header_button" >다운로드(구현중)</button>
		</span>
	</div>
	<div>
		<div class="nicknameDlt">작성자 : ${picture.nickname }</div>
		<div class="detaillImg">
			<img src="resources/img/${picture.img}" class="picture">
		</div>
		<div class="tagBigDiv">
			<c:forEach items="${tag}" var="t">
				<c:if test="${not empty t }">
					<div class="tagList"> #${t} </div>
				</c:if>
			</c:forEach>
		</div>
		<div>
			 <pre class="jjalExplanation">${picture.explanation }</pre> 
		</div>
	</div>
</div>
</body>
</html>