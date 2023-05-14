<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="reg.do" method="POST" class="joinForm">
                                                                                               
      <h2>회원가입</h2>
      <div class="textForm">
        <input name="id" type="text" class="id" placeholder="아이디">
      </div>
      <div class="textForm">
        <input name="pw" type="password" class="pw" placeholder="비밀번호">
      </div>
      <div class="textForm">
        <input name="nickname" type="text" class="nickname" placeholder="닉네임">
      </div>
      <input type="submit" class="btn" value="J O I N"/>
    </form>
</body>
</html>