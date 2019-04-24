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
String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
String hp=(String)session.getAttribute("hp");
%>

아이디 : <%=id %><br>
이름 : <%=name %><br>
email : <%=email %><br>
hp : <%=hp %><br>

<a href="session_resultMypage2.jsp">session이 제대로 되었는지 확인</a>

</body>
</html>