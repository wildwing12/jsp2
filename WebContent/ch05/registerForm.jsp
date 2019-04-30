<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="registerPro.jsp">
<table>
	<tr>
		<td>아이디</td>
		<td><input name="id"></td>
	</tr>
	<tr>
		<td>비번</td>
		<td><input name="passwd"></td>
	</tr>
		<tr>
		<td>이름</td>
		<td><input name="name"></td>
	</tr>
	<tr>
		<!-- colspan 셀 합치기, rowspan 행 합치기 -->
		<td colspan="2" align="center">
			<input type="submit" value="확인">
		</td>
	</tr>
</table>


</form>
</body>
</html>