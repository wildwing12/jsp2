<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(function(){ //페이지가 로딩된 후 자동츠로 실행되는 코드
	$.ajax({
		url: "/jsp01/memo_servlet/memo_list.do",
		success: function(result){//콜백 함수, 결과텍스트를 div에 출력
			$("#div1").html(result);
		}
	});
});
</script>
</head>
<body>
<h2>한줄메모장</h2>
<!-- 메모를 출력시킬 영역  -->
<div id="div1"></div>
</body>
</html>