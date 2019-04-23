<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>snac</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
		url:"/jsp01/snac_servlet/snac_list.do",
		success :function(result){
			$("#div1").html(result);
		}
	});
});
</script>

</head>
<body>
<h1>과자 목록</h1>
<div id="div1"></div>
</body>
</html>