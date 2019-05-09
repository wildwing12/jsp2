<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.ArrayList" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
ArrayList<String> items=new ArrayList<>();
items.add("001");
items.add("홍길동");
items.add("대리");
items.add("전산");
items.add("2019년1월1일");
items.add("3000만");
request.setAttribute("items", items);
%>
<jsp:forward page="myELArrayList_result.jsp"/>
</body>
</html>