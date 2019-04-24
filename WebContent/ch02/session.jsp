<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
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
//pageContext(현재 페이지)<request(요청+응답)<session(사용자 단위)<application(서버 단위)
//session 영역에 변수 저장
session.setAttribute("name", "김철수");//setAttribute("변수명","값")
session.setAttribute("age", 20);

//reqeust 영역에 변수 저장
request.setAttribute("name", "김철수");
request.setAttribute("age", 20);

RequestDispatcher rd=request.getRequestDispatcher("session_result.jsp");
rd.forward(request, response);


%>
</body>
</html>