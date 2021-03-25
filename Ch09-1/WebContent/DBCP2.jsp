    <%@ page import="java.sql.Connection" %>
    <%@ page import="com.ezen.dao.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DBCP2</title>
</head>
<body>
	<%
		MemberDAO memberDAO=MemberDAO.getInstance();
		Connection conn=memberDAO.getConnectoin();
		out.println("DBCP 연동 성공");
	%>
</body>
</html>