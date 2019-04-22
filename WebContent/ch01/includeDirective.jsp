<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="color.jspf" %>
 <%@page import="config.Constants" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background: <%=bodyback_c %>;
}
</style>

</head>
<body>
<h2>최대값: <%=Constants.MAX %></h2>
<!-- static이기 때문에  new 안하고 클래스 이름. 변수로 바로 접근 -->
<jsp:include page="test01.jsp"></jsp:include>
<%-- <%=str %> --%>
<!-- jsp 액션 태그는 java변수를 고유 할 수 없음 -->
<%@  include file="test01.jsp" %>
<%=str %>
<!-- page 모듈화를 위해 파일을  include 하는 방법이 2가지 있는데,
 jsp 액션 태그 방tlrrhk, include file 지시어 방법중 
 파일 공유가 가능한 것은  include file 지시어 방법이다. -->
</body>
</html>