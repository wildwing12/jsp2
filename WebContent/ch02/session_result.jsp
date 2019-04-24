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
String name=(String)session.getAttribute("name");
int age=(int)session.getAttribute("age");
%>

[세션에 저장된 형태로 넘어온 데이터]<br>
이름:<%=name %>, 나이:<%=age %><br>
세션 아이디 : <%=session.getId() %><br><!-- //세션 부분은 아이디가 필요함 -->

<hr>
<%
String name2=(String)request.getAttribute("name");
int age2=(int)request.getAttribute("age");
%>
[request에 저장된 형태로 넘어온 데이터]<br>
이름:<%=name2 %>, 나이:<%=age2 %><br>

<a href="session_result2.jsp">페이지가 바뀔때 세션과 request 값 확인</a>
</body>
</html>