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
<script>
	function upload() {
		window.open('upload.JJAL','upload','width=500,height=500')
	}
</script>
</head>
<body>
 <div class="entire">
	<header class="header">
		<div class="header_first_div">
			<h1 class="logo">JJAL</h1>
			<input type="button" class="header_button" value="짤 업로드" onclick="upload()">
		</div>
	</header>
	
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
	
	<div>
		<table>
			<c:forEach items="${picture}" var="p">
				<tr>
					<td><img src="resources/img/${p.img }" style="max-width: 100px;"></td>
				</tr>
			</c:forEach>
		</table>	
	</div>
 </div>
 
 
</body>
</html>