<!--http://192.168.46/jsp01/member/member.jsp  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"/jsp01/member_servlet/member_list.do",
			success :function(result){
				$("#div1").html(result);
			}
		});
	});
</script>
</head>
<body>
<H2>과자목록</H2>
<div id="div1"></div>
</body>
</html>