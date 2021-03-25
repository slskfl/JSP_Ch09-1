<%@page import="com.ezen.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
	
	<form action="idCheck.do" method="get" name="frm"> 
		아이디<input type="text" name="userid" value="${userid}" /> 
		<input type="submit" value="중복체크"/>
		<br>
		<%--결과 : ${result } <br>
		 ${result > 0 ? "아이디 사용 불가" : "아이디 사용 가능" } 
		 <% 
		 	String userid =request.getParameter("userid");
		 	MemberDAO memberDAO=MemberDAO.getInstance();
		 	int result=memberDAO.confirmID(userid);
		 	
		 	// 이미 resultfmf 값을 넘겨주었기 때문에 위에 연결은 노 쓸모
		 	if(result==1){%>
		 		이미 사용 중인 아이디입니다.<br> <%
		 		} else {%>
		 		사용 가능한 아이디입니다.<br>
		 		<%}
		 	%> --%>
		 	<c:if test="${result==1}" >
		 		${userid}는 사용중인 아이디입니다.<br>
		 	</c:if>
		 	<c:if test="${result==-1}" >
		 		${userid}는 사용 가능한 아이디입니다.<br>
		 		<input type="button" value="사용" onclick="idOK();"/>
		 	</c:if>	
	</form>
	
</body>
</html>