<!-- http://192.168.0.46/jsp01/project/login.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background-color: powderblue;
}
div{
	border: 1px solid silver;
	margin:auto ;
	margin-top:350px;
	padding:0;
	text-align: center;
	width:30%;
	hight:800px;
	background-color: rgba(0,0,0,0.5);
}
.text{
	width:80%;
	padding:8px;
}
h2{color:white;}
#btnlogin{
	width:80%;
	height:30px;
	background: #b30000;
	opacity: 0.8;
	color:white;
}
</style>
</head>
<body>
<%String context=request.getContextPath();%>
<form method="post" action="<%=context%>/kkk/join.do">
	<div id="login">
		<h2>로그인</h2>
		<input class="text" name="userid" type="text" placeholder="아이디를 입력하세요"><br>
		<input class="text" name="passwd" type="password"placeholder="비밀번호를 입력하세요." maxlength="20"width="80%"><br>
		<%String message=request.getParameter("message");
		if(message!=null){%>
		<span style="color:red; font-weight: bold;"><%=message %></span>
		<%}%>
		<hr>
		<input id="btnlogin" type="submit" value="로그인" >
	</div>
</form>
</body>
</html>