<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
<h2>파일 업로드</h2>
<!-- 파일 업로드는 반드시 post방식이어야함 
multipart/form-data 파일 업로드 타입 지정도 반드시 해야 함.-->
<form name="form1" method="post" action="upload_result.jsp" enctype="multipart/form-data">
이름 : <input name="name"><br>
제목 : <input name="subject"><br>
 파일1 :<input type="file" name="file1"><br>
 파일2 : <input type="file" name="file2"><br>
 <input type="submit" value="업로드">
</form>
</body>
</html>