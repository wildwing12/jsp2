<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<%String context=request.getContextPath(); %>
<script type="text/javascript">
	$(function(){
		$("#logout").click(function(){
			location.href="<%=context%>/practice/logout.do";
		});
	});
</script>

</head>
<body>
<%=session.getAttribute("message") %>
접속중인 아이디는 <%=session.getAttribute("id")%>입니다.
<input type="button" id="logout" value="logout">
</body>
</html>