<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>request 객채의  method</h2>
<%
	String[] names={"프로토콜","서버이름","method","컨텍스트","uri","url","ip"};
//uri:/jsp01/ch02/requestTest2.jsp 경로만
//url:http://192.168.9.101/jsp01/ch02/requestTest2.jsp 풀네임
 	String[] values={
 			request.getProtocol(), request.getServerName(), request.getMethod(),request.getContextPath()
 			,request.getRequestURI(), request.getRequestURL().toString(), request.getRemoteAddr()
 	};

for(int i=0; i<names.length; i++){
	out.println(names[i]+":"+values[i]+"<br>");
}
Enumeration<String> en=request.getHeaderNames();
String headerName="";
String headerValue="";
out.println("<h2>헤더정보</h2>");
while(en.hasMoreElements()){
	headerName =en.nextElement();
	headerValue= request.getHeader(headerName);
	out.println(headerName+":"+headerValue+"<br>");
}
%>
</body>
</html>