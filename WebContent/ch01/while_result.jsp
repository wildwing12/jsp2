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

//request.setAttribute("변수명", 값) object 타입
//request.getAttribute("변수명") object 타입
//따라서 getAttribute로 가져온 값은 해당 데이터 타입으로 형 변환 해줘야함.

int result =(int)request.getAttribute("result");
out.println("결과:"+result);
%>
</body>
</html>