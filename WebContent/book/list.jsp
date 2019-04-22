<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="book.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
BookDAO dao=new BookDAO();
ArrayList<BookDTO> items=dao.bookList();
%>

<% for(BookDTO dto : items) { %>
  <table border="1">
  <tr><td><%=dto.getTitle() %></td>
  <td><%=dto.getAuthor() %></td>
  <td><%=dto.getPrice() %></td>
  <td><%=dto.getQty() %></td>
  </tr>
  </table>
<% } %>  
>
</body>
</html>