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
<title>회원가입</title>
</head>
<body>
<div style = "padding : 50px">
	<form method="post" name = "joinForm" action = "joinOk.jsp">
		<div class="container mx-auto">
			<div class = "mb-3">
				<img src = "join.jpg" style = "width : 400px; height : 200px">
			</div>
			<div class="mb-3 my-3">
				<label for="exampleInputEmail1" class="form-label">아이디</label> <input
					type="text" name="id" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" style="width: 250px;" size="15"
					maxlength="15">
				<div id="emailHelp" class="form-text">아이디를 입력하세요.</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">비밀번호</label> <input
					type="password" name="passwd" class="form-control"
					id="exampleInputPassword1" style="width: 250px;" size="15"
					maxlength="15">
					<div id="emailHelp" class="form-text">비밀번호를 입력하세요.</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">이름</label> <input
					type="text" name="name" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					style="width: 250px;" size="15" maxlength="15">
				<div id="emailHelp" class="form-text">이름을 입력하세요.</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">이메일</label> <input
					type="text" name="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					style="width: 250px;" size="15" maxlength="40">
				<div id="emailHelp" class="form-text">이메일을 입력하세요</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">주소</label> <input
					type="text" name="address" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" style="width: 250px;" size="15"
					maxlength="50">
				<div id="emailHelp" class="form-text">주소를 입력하세요.</div>
			</div>
			<input type="submit" value = "회원가입" class="btn btn-outline-success">
			<input type = "reset" class = "btn btn-outline-success" value = "다시 작성">
		</div>
	</form>
</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</body>
</html>
