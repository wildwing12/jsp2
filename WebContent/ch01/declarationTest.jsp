<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%//스크립틀릿
String str1="java";
%>
<%!//jsp 선언부(인스턴스 변수, method 선언 가능), !표시 꼭해야 함.
String str2="hello";
String geStr2(){
	return str2;
}
%>
<%=str1%><br>
<%=str2 %><br>
<%=geStr2() %><br>
</body>
</html>