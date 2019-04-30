<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String context=request.getContextPath();%>

<form method="post" action="<%=context%>/kjh/login.do">
	아이디 : <input name="id"><br>
	비밀번호 :<input type="password" name="pwd">
	<input type="submit" value="로그인"> 
</form>

<%String message=request.getParameter("message");
if(message!=null){%>
<span style="color:red"><%=message%></span>
<%} %>
</body>
</html>