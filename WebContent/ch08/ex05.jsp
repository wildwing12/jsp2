<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
ArrayList<String> items=new ArrayList<>();
items.add("오렌지");
items.add("사과");
items.add("포도");
items.add("복숭아");
request.setAttribute("items", items);
%>
<jsp:forward page="ex05_result.jsp"></jsp:forward>
<!-- 참고 : forward와 sendRedirect차이 
forward :주소 고정, 대량의 데이터가 전달 가능, cotextepath포함
send Redirect :주소 변경, 소량의 데이터, 컨택스트 패스 추가해야함.
-->
</body>
</html>