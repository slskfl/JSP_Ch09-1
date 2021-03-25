<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
	<form action="join.do" method="post" name="frm">
		<table>
			<tr> 
				<td>이름*</td> 
				<td> 
					<input type="text" name="name" size="10" />
				</td> 
			</tr>
			<tr> 
				<td>아이디*</td> 
				<td> 
					<!-- hidden>>화면상에는 보이지 않지만 서버에는 전송이 됨 -->
					<input type="text" name="userid" size="10" id="userid"/>
					<input type="hidden" name="reid" size="10" /> 
					<input type="button" value="중복체크" onclick="idCheck();" />
				</td> 
			</tr>
			<tr> 
				<td>비밀번호*</td> 
				<td> 
					<input type="password" name="pwd" size="10" />
				</td> 
			</tr>
			<tr> 
				<td>비밀번호 확인*</td> 
				<td> 
					<input type="password" name="pwd_check" size="10" />
				</td> 
			</tr>
			<tr> 
				<td>이메일</td> 
				<td> 
					<input type="text" name="email" size="20" />
				</td> 
			</tr>
			<tr> 
				<td>연락처</td> 
				<td> 
					<input type="text" name="phone" size="13" />
				</td> 
			</tr>
			<tr> 
				<td>등급</td>
				<td>
					<input type="radio" name="admin" value="0"
					checked="checked"/> 사용자
					<input type="radio" name="admin" value="1"
					checked="checked"/> 관리자
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="확인" onclick="return joinCheck();"/>
					<input type="submit" value="취소"/>
				</td>		
			</tr>
		</table>
	
	</form>
</body>
</html>