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
request.setCharacterEncoding("utf-8");
String name="김철수";
String pageName="includedParamTest.jsp";
%>
<%=name %><br>
<%=pageName %><br>
<hr>
포함하는 페이지의 파라미터값이 다시 아래에 출력됨.
<jsp:include page="<%=pageName %>">
  <jsp:param value="<%=name %>" name="name2"/>
  <jsp:param value="<%=pageName %>" name="pageName2"/>
</jsp:include>
</body>
</html>