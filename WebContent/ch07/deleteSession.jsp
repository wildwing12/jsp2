<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//개별적으로 지울때는 이거 쓰고
/* session.removeAttribute("id");//세션 변수 삭제
session.removeAttribute("passwd"); */
//한번에 다 날리려거든 이거쓰세요
session.invalidate();//세션을 초기화 시킴(몽땅 날림)
%>
세션이 삭제되었습니다.
<a href="veiwSession.jsp">세션 확인 </a>
</body>
</html>