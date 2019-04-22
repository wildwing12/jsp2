<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Date nowDate = new Date();//날짜 객체
out.println(nowDate+"<br>");//웹브라우저 객체
System.out.println(nowDate);//톰캣의  consle창에 출력

SimpleDateFormat dateFormat = new SimpleDateFormat("yyy년 mm월  dd일 a HH:mm:ss");

String formatDate = dateFormat.format(nowDate);
%>
<!-- 표현식(expression) -->
현재 날짜는 <%=formatDate %>입니다.<br>
현재 날짜는 <%out.println(formatDate); %>입니다.<br>
</body>
</html>