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
String context=request.getContextPath();
%>
<form method="post" action="<%=context %>/kkjj/login.do" >
아이디:<input name="userid">
비번 :<input type="password" name="passwd">
<input type="submit" value="확인">
</form>

<% String message=request.getParameter("message");
if(message!=null) {%>
<span style="color:red"><%=message %></span>
<%} %>
</body>
</html>