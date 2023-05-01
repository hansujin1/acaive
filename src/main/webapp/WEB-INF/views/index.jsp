<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='resources/indexCss.css' rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	function upload() {
		window.open('upload.JJAL','upload','width=500,height=500')
	}
</script>
</head>
<body style="height: 100%;">
 <div class="entire">
	<header class="header">
		<div class="header_first_div">
			<a class="logo" href="/test">JJAL</a>
			<div>
			<c:if test="${not empty sessionScope.loginMemeber}">
				<input type="button" class="header_button" value="짤 업로드" onclick="location.href='upload.JJAL' ">
			</c:if>
				<jsp:include page="${loginPage}"></jsp:include>
			</div>
		</div>
	</header>
	
	<jsp:include page="${contentPage}"></jsp:include>
	
 </div>
 
 
</body>
</html>