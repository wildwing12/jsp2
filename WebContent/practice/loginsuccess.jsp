<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<%String context=request.getContextPath(); %>
<%@include file="../include/session_check.jsp" %>
<script type="text/javascript">
$(function(){
	$("#logoutbtn").click(function(){
		location.href="<%=context%>/kkjj/logout.do";
	});
});
</script>
</head>
<body>
<h1><%=session.getAttribute("message") %></h1>
접속중인 아이디는 <%=session.getAttribute("userid") %>입니다.
<input type="button" id="logoutbtn" value="로그아웃">

</body>
</html>