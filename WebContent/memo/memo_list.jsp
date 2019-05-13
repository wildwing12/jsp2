<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
</head>
<body>
<table border="1" width="500px">
 <tr>
 	<th>번호</th>
 	<th>이름</th>
 	<th width="50%">메모</th>
 	<th>날짜</th>
 </tr>
 <!-- var="개별값" items="리스트" -->
<c:forEach var="row" items="${list}">
 <tr>
 <td>${row.idx}</td>
 <td>${row.writer}</td>
 <td>${row.memo}</td>
 <td>${row.post_date}</td>
</tr>
</c:forEach>
</table>
</body>
</html>