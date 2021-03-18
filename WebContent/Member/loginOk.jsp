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
		String id = request.getParameter("id");
		session.setAttribute("id", id);
		String passwd = request.getParameter("passwd");
		int check = 0;
		
		MemberDto dbpro = MemberDto.getInstance();
		check = dbpro.userCheck(id, passwd);
		
		if(check == 1){
			%>
			<script>
				alert('로그인 성공!');
				location.href = "main.jsp";
			</script>
			<%
		}else if(check == 0){
			%>
			<script>
				alert('비밀번호가 틀렸습니다!');
				history.go(-1);
			</script>
			<%
		}else{
			%>
			<script>
				alert('존재하지 않는 아이디입니다.');
				location.href = "join.jsp";
			</script>
		<% }	
		%>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</body>
</html>
