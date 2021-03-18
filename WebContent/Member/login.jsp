<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.sql.*, javax.sql.*, javax.naming.*"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<title>로그인</title>
</head>
<body>
<div style = "padding : 50px">
	<form method = "post" action = "loginOk.jsp">
	<div class = "form-group container mx-auto">
	<div class = "mb-3">
				<img src = "welcome.jpg" style = "width : 320px; height : 200px">
			</div>
		<div class = "form-group">
		<label for = "exampleInputEmail1">아이디</label>
		<input type = "text"  style = "width : 60%"  name = "id" class = "form-control" placeholder = "아이디를 입력하세요.">
		</div>
		<br>
		<div class = "form-group">
		<label for = "exampleInputPassword1">비밀번호</label>
		<input type = "password" style = "width : 60%" name = "passwd" class = "form-control" placeholder = "비밀번호를 입력하세요.">
		</div>
		<div style = "padding:20px">
		<input type = "submit" value = "로그인" class = "btn btn-outline-success">
		<button type = "button"  class = "btn btn-outline-success" onclick = "location.href = 'join.jsp'">회원가입</button>
		</div>
		</div>
	</form>
</div>	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</body>
</html>
