<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- 페이지 지시어(page directive) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%//jsp code 영역(scriptlet, 스크립틀릿)
//jsp프로그램 
//model 1: jsp 페이지 위주
//model 2: java class 위주(서블릿)
//MVC pattern(model 2): Model, View, Controller
String str= "hello jsp";
out.println(str+"<br>");//웹 브라우저 문자열이 html로 출력됨
//application 내장 객체(서버의 정보를 처리)
//jsp의 실제 서비스 경로
out.println(application.getRealPath("/"));
%>
</body>
</html>