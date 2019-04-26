<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap{
	width:1200px;
	margin: 0 auto;
	padding :0;
	text-align: center;
}
header{
	width: 100%;
	height:100px;
	position:relative;
	background-color: #ffff00;
}
#menu{
	width:100%;
	height:100px;
	position: relative;
	background: #6699ff;
}
#subContent{
	float:left;
	width:30%;
	height:1200px;
	position:relative;
	background-color: #001233;
}
#mainContent{
	float:left;
	width: 70%;
	height:1200px;
	position:relative;
	background-color: #b3c9ff;
}
footer{
	clear: both;
	widows: 100%;
	height:100px;
	position: relative;
	background: #00081a;
}

</style>
</head>
<body>
<div id="wrap">
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<nav id="menu">
		<jsp:include page="menu.jsp"></jsp:include>
	</nav>
	<section id="subContent">
		<jsp:include page="subContent.jsp"></jsp:include>
	</section>
	<section id="mainContent">
		<jsp:include page="mainContent.jsp"></jsp:include>
	</section>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</div>
</body>
</html>