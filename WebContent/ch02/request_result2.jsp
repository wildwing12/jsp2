<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- EL(Expression Language, 표현 언어)로서  java코드를 줄일 수 있음 -->
<!-- $(맵.변수)  여기서의 $는  jQuery가 아니라 java코드를  의미-->

이름 :${map.name}<br>
나이:${map.age}<br>
성별:${map.gender}<br>
취미:${map.hobby}<br>
</body>
</html>