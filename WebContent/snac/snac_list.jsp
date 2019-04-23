<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="snac.SnacDTO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{	magin:auto;
	padding: 0;
	text-align: center;
	display: table;}
body{
	background-color: #b30000;
	color:white;
	
}
table tr, th, td{
	border:1px solid black;
	
}
</style>
</head>
<body>
<%List<SnacDTO> items=(List<SnacDTO>)request.getAttribute("list"); %>
<table>
<tr>
<th>번호</th>
<th>과자이름</th>
<th>가격</th>
<th>수량</th>
</tr>
<%for(SnacDTO dto:items) {%>
<tr>
<td><%=dto.getNum() %></td>
<td><%=dto.getName() %></td>
<td><%=dto.getPrice() %></td>
<td><%=dto.getAmount() %></td>
</tr>
<%} %>
</table>
</body>
</html>