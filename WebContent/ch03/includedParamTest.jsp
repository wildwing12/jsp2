<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>저는 포함되는 페이지인  : <%=request.getParameter("pageName2") %>입니다.</h2>
<b><%=request.getParameter("name2") %>님 환영합니다.</b>
</body>
</html>