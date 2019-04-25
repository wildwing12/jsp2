<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder" %>    
<%
//세션 변수 조회
String userid=(String)session.getAttribute("userid");
if(userid==null){//세션변수에 값이 없으면, 로그인 아닌 상태
	String message="먼저 로그인 하신 후 사용 가능합니다.";
	message=URLEncoder.encode(message,"utf-8");
	//로그인 화면 이동
	response.sendRedirect("/project/login.jsp?message="+message);
}
%>