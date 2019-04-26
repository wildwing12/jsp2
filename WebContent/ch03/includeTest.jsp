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
//pageName에는  include.jsp가 값으로 들어온다.
String pageName=request.getParameter("pageName");
%>
포함하는 페이지는<%=pageName %><br>
<!-- <jsp:include> 변수 공유가 안됨 -->
<jsp:include page="<%=pageName %>"></jsp:include>
<!-- 변수 공유를 하려면 include file를 사용해야 한다.   -->
<%@include file="includedTest.jsp" %>
메시지:<%=message %>

</body>
</html>