<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){//페이지 로딩이 끝나면 자동으로 실행 코드
	list();//list호출
});
function list(){
	$.ajax({
		type: "post",
		url: "/jsp02/member_servlet/list.do",
		success: function(result){
			console.log(result);//F12 consol에서 응답 text확인
			$("#memberList").html(result);
		}
	});
}
</script>
</head>
<body>
<h2>회원관리</h2>
<div id="memberList"></div>
</body>
</html>