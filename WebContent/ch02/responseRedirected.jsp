<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>이동된 페이지</h2>
<!-- 웹은 기본적으로 비 연결성으로 인해 페이지가 바뀌면 연걸이 끊어지면서 값이 언넘어 온다. 
이를 해결하기 위해서 form태그 사용, session, cookie등등으로 해결한다.  -->
<%
//get방식으로 전달, 스트링으로 처리됨
String name=request.getParameter("name");//파라미터 변수를 읽음
String age = request.getParameter("age");
%>
 이름 :<%=name %><br>
나이 :<%=age %><br>
<hr>
이름 : <%=request.getParameter("name") %><br>
나이 : <%=request.getParameter("age") %><br>
<hr>
이름 : ${param.name}<br>
나이 : ${param.age}<br> 
</body>
</html>