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
<div style="display: flex;">
<div>
<form action="logingo.do" method="post">
	<div>
		<div class="uploadModalMidDiv_login" style="width: 500px; height: 550px; border: 1px solid gray;">
			<div class="uploadModalSmallDiv">
			<div>
				<span style="font-size: 25pt;">로그인</span>
			</div>
			<div class="login_id">
				<div>
					<span class="loginIDText">ID</span>
				</div>
				<div style="margin-left: 25px;">
					<input name="id" class="loginIDInput">
				</div>
			</div>
			
			<div class="login_id">
				<div>
					<span style="font-size: 15pt;">PW</span>
				</div>
				<div style="margin-left: 15px;">
					<input name="pw" class="loginPWInput">
				</div>
			</div>
			<div class="result">${r}</div>
			<div class="loginBtn">
				<button class="LOGINButton">로그인</button>
			</div>
			<div>
				아직도 계정이 없으신가요? >>
				<a href="regGo">계정만들기</a>
			</div>
			</div>
		</div>
	</div>
</form>
</div>
<div>
	<img src="resources/img/1.png" class="loginPricture">
</div>
</div>
</body>
</html>