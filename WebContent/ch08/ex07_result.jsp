<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%@page import="member.MemberDTO" %>
<%
MemberDTO dto=(MemberDTO)request.getAttribute("dto");
if(dto !=null){
	out.println("이름"+dto.getName()+"<br>");
	out.println("아이디"+dto.getUserid()+"<br>");
	out.println("비번"+dto.getPasswd()+"<br>");
}else{
	out.println("출력한 이름이 없습니다.");
}
%> --%>
<!-- 변수 사용 범위(scope)
java :pageContext. request, session, application
El :pageScope, requestScope, sessionScope, applicationScope
ex> 이름 : ${requestScope.dto.name}.....
 -->
이름: ${dto.name }<br>
아이디 : ${dto.userid}<br>
비번 :${dto.passwd }<br>

</body>
</html>