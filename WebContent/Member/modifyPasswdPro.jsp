<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*"%>
<%@ page import="member.MemberDao"%>
<%@ page import="member.MemberDto"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<script src = "script.js"></script>
<title></title>
</head>
<body>

	<%
		String id = (String) session.getAttribute("id");
		String passwd = (String)session.getAttribute("passwd");
		
		MemberDto dbpro = MemberDto.getInstance();
		int check = dbpro.userCheck(id, passwd);
		
		if(check == 0){
			%>
			<script>
				alert("비밀번호가 틀렸습니다!");
				history.go(-1);
			</script>
		<%}else{
			%>
			<form name = "modifyform" method = "post">
			새 비밀번호 : <input type = "password" name = "newPasswd"><br>
			새 비밀번호 확인 : <input type = "password" name = "newPasswd2"><br>
			<input type = "submit" value = "변경하기" onclick = "modifyForm(this.form)">
			<input type = "reset" value = "취소하기">
			</form>
		<%}
				
	%>
	
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>
</html>
