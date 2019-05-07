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
Cookie cookie=new Cookie("id","");
Cookie cookie2=new Cookie("pwd","");
Cookie cookie3=new Cookie("age","");
Cookie cookie4=new Cookie("hp","");//쿠키 값에 id에 대해 빈 값 처리 해서 id만 삭제
cookie.setMaxAge(0);
cookie2.setMaxAge(0);
cookie3.setMaxAge(0);
cookie4.setMaxAge(0);//즉시 삭제
response.addCookie(cookie);
response.addCookie(cookie2);
response.addCookie(cookie3);
response.addCookie(cookie4);//따로 삭제 함수는 없어서 addCookie()를 씀
%>
쿠기가 삭제되었습니다. 
<a href="useCookie.jsp">쿠키 확인</a>

<!-- <a href="useCookie.jsp?id=kim">쿠기 확인</a> -->
<!-- <a href="useCookie.jsp?id=kim">쿠기 확인</a> -->
</body>
</html>