<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %> 
<%@ page import="java.util.List" %>  
<%@ page import="member.MemberDTO" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String,Object> map=(Map<String,Object>)request.getAttribute("map");

List<MemberDTO> list=(List<MemberDTO>)map.get("list");

//압축에 앞축을 해줬기 때문에 풀어주어야함
int count=(int)map.get("count");
%>


등록된 회원수 :<%=count %>명
<table border="1" width="600px">
<tr>
	<th>이름</th>
	<th>아이디</th>
	<th>가입일자</th>
	<th>이메일</th>
	<th>핸드폰</th>	
</tr>
<tr>
 <% for(MemberDTO dto : list) { %>
   <td><%=dto.getName() %></td>
   <td><%=dto.getUserid() %></td>
   <td><%=dto.getJoin_date() %></td>
   <td><%=dto.getEmail() %></td>
   <td><%=dto.getHp() %></td>
 <tr>
 <% } %>
</table>
</body>
</html>