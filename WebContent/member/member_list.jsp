<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %> 
<%@ page import="member.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%List<MemberDTO> items=(List<MemberDTO>)request.getAttribute("list"); %>
<table border="1">
<tr>
<th>아이디</th>
<th>이름</th>
<th>이메일</th>
<th>hp</th>
<th>가입일</th>
</tr>
<%
for(MemberDTO dto: items){
%>
<tr>
<td><%=dto.getId()%></td>
<td><%=dto.getName()%></td>
<td><%=dto.getEmail()%></td>
<td><%=dto.getHp()%></td>
<td><%=dto.getJoin_date()%></td>
</tr>
<%} %>
</table>
</body>
</html>