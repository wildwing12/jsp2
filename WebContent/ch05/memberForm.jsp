<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="memberPro.jsp">
	<table>
		<tr>
			<td>아이디</td>
			<td><input name="id"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input name="pwd">
		</tr>
			<tr>
			<td>이름</td>
			<td><input name="name">
		</tr>
		<tr>
			<td>이메일</td>
			<td><input name="email"><td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input name="hp"></td>
		</tr>
		<tr align="center" >
			<td colspan="2"><input type="submit" value="확인"><td>
		</tr>
	</table>
</form>	
</body>
</html>