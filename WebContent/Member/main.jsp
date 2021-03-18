<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*"%>
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
<title></title>
</head>
<body>
	<%
		String id = "";
	try{
		id = (String)session.getAttribute("id");	
	
	if (id.equals("") || id == null) {
		response.sendRedirect("login.jsp");
	%>
	<%
		} else {
	%>

	<%=id%>님 어서오세요!
	<div class="container mx-auto">
		<button type="button" onclick="location.href = 'logOut.jsp'"
			class="btn btn-outline-success">로그아웃</button>
		<button type="button" onclick="location.href = 'modify.jsp'"
			class="btn btn-outline-success">회원 정보 수정</button>
	</div>
	<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>
</html>
