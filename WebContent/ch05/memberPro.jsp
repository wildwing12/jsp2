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
request.setCharacterEncoding("utf-8"); 
%>
<jsp:useBean id="memberReg" class="ch05.MemberReg">
	<jsp:setProperty name="memberReg" property="*"/>
</jsp:useBean>
<%@page import="java.sql.Timestamp" %>
<%
out.println(System.currentTimeMillis());
memberReg.setPost_date(new Timestamp(System.currentTimeMillis()));
%>
아이디 : <jsp:getProperty property="id" name="memberReg"/><br>
비밀번호 : <jsp:getProperty property="pwd" name="memberReg"/><br>
이름 : <jsp:getProperty property="name" name="memberReg"/><br>
이메일 : <jsp:getProperty property="email" name="memberReg"/><br>
전화번호 : <jsp:getProperty property="hp" name="memberReg"/><br>
가입일자 : <jsp:getProperty property="post_date" name="memberReg"/><br>

</body>
</html>