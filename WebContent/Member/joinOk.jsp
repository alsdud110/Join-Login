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
<jsp:useBean id = "member" class = "member.MemberDao">
	<jsp:setProperty name = "member" property = "*"/>
</jsp:useBean>
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
	
		member.setId(id);
		member.setPasswd(passwd);
		member.setName(name);
		member.setEmail(email);
		member.setAddress(address);
		
		MemberDto dbpro = MemberDto.getInstance();
		dbpro.insertMember(member);
		response.sendRedirect("login.jsp");
				
	%>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</body>
</html>
