<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="loginOK-dropdown" >
      <span class="loginOK-dropbtn">${sessionScope.loginMemeber.nickname }님</span>
      <div class="loginOK-dropdown-content">
        <a href="#">my page</a>
        <a href="logout">logout</a>
      </div>
    </div> 
</body>
</html>