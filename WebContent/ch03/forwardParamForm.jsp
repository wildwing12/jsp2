<!-- http://192.168.0.46/jsp01/ch03/forwardParamForm.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String path=request.getContextPath();
%>
<form method="post" action="<%=path %>/ch03_servlet/forward.do">
이름:<input name="name">
색상:<select name="color">
	<option value="blue">파랑</option>
	<option value="green">초록</option>
	<option value="red">빨강</option>
</select><br>
취미:<input type="checkbox" name="hobby" value="낚시">낚시
	<input type="checkbox" name="hobby" value="등산">등산
	<input type="checkbox" name="hobby" value="운동">운동
	<input type="checkbox" name="hobby" value="독서">독서
<br>
좋아하는 요리 : <input type="checkbox" name="food" value="한식">한식
		   <input type="checkbox" name="food" value="중식">중식
		   <input type="checkbox" name="food" value="일식">일식
		   <input type="checkbox" name="food" value="양식">양식
		    	
	
	<input type="submit" value="확인">
</form>
</body>
</html>