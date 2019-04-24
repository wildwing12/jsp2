<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디 : <%=session.getAttribute("id") %><br>
이름 : <%=session.getAttribute("name") %><br>
email : <%=session.getAttribute("email") %><br>
hp : <%=session.getAttribute("hp") %><br>
</body>
</html>