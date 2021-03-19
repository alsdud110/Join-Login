<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.sql.*, javax.sql.*, javax.naming.*"%>
<%@ page import = "member.MemberDao" %>
<%@ page import = "member.MemberDto" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<title></title>
</head>
<body>

	<%
		String id = (String)session.getAttribute("id");
		MemberDao dbpro = MemberDao.getInstance();
		MemberDto member = dbpro.getUserInfo(id);
		
	%>
		<form method="post" action="modifyOk.jsp">
		<div class="container mx-auto">
			<div class="mb-3 my-3">
				<label for="exampleInputEmail1" class="form-label">아이디</label> <input
					type="text" name="id" value = "<%=id %>" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" style="width: 250px;" size="15"
					maxlength="15">
				<div id="emailHelp" class="form-text">We'll never share your
					email with anyone else.</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">비밀번호</label> <input
					type="password" name="passwd" value = "<%=member.getPasswd() %>" class="form-control"
					id="exampleInputPassword1" style="width: 250px;" size="15"
					maxlength="15">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">이름</label> <input
					type="text" name="name" value = "<%=member.getName() %>" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					style="width: 250px;" size="15" maxlength="15">
				<div id="emailHelp" class="form-text">이름을 입력하세요.</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">이메일</label> <input
					type="text" name="email" value = "<%=member.getEmail() %>" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					style="width: 250px;" size="15" maxlength="15">
				<div id="emailHelp" class="form-text">이메일을 입력하세요</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">주소</label> <input
					type="text" name="address" value = "<%=member.getAddress() %>" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" style="width: 250px;" size="15"
					maxlength="15">
				<div id="emailHelp" class="form-text">주소를 입력하세요.</div>
			</div>
			<button type="submit" class="btn btn-primary">수정하기</button>
			<button type = "submit" class = "btn btn-primary" onclick = "action='modifyPasswd.jsp'; submit();">비밀번호 수정하기</button>
			<button type="submit" class="btn btn-primary" onclick = "action='delete.jsp'; submit();">삭제하기</button>
			<input type = "reset" class = "btn btn-primary" value = "다시 작성">
		</div>
	</form>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</body>
</html>
