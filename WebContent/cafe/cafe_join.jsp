<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnSave").click(function(){
		var param ="id="+$("#id").val()
		+"&passwd="+$("#passwd").val()
		+"&name="+$("#name").val();
		$.ajax({
			type : "post",
			url : "/jsp02/cafe_servlet/join_bcrypt.do",
			data : param,
			success:function(){
				alter("추가 되었습니다.");
			}
		});
	});
});
</script>
</head>
<body>
<h2>회원 가입 (bcrypt방식)</h2>
아이디 : <input id="id"><br>
비밀번호 :<input type="password" id="passwd"><br>
이름 :<input id="name">
<button id="btnSave">회원가입</button>
</body>
</html>