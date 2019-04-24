<!-- http://192.168.0.46/jsp01/ch02/sessoinMypage.jsp -->
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
session.setAttribute("id", "hong");
session.setAttribute("name","홍길동");
session.setAttribute("email", "hong@gmail.com");
session.setAttribute("hp", "010-1234-1234");
RequestDispatcher rd=request.getRequestDispatcher("session_resultMypage.jsp");
rd.forward(request, response);

%>


</body>
</html>