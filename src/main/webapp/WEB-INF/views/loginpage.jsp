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
<form action="logingo.do" method="post">
	<div>
		<div class="uploadModalMidDiv_login" style="width: 500px; height: 550px; border: 1px solid gray;">
			<div class="uploadModalSmallDiv">
			<div>
				<span style="font-size: 20pt;">로그인</span>
			</div>
			<div class="login_id">
				<div>
					<span style="font-size: 15pt;">ID</span>
				</div>
				<div style="margin-left: 25px;">
					<input name="id">
				</div>
			</div>
			
			<div class="login_id">
				<div>
					<span style="font-size: 15pt;">PW</span>
				</div>
				<div style="margin-left: 25px;">
					<input name="pw">
				</div>
			</div>
			<div>${r}</div>
			<div>
				<button class="uploadButton">로그인</button>
			</div>
			<div>
				<a href="regGo">계정만들기</a>
			</div>
			</div>
		</div>
	</div>
</form>
</body>
</html>