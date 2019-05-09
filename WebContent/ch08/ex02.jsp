<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 스크립 틀릿을 사용하는 방법 -->
<%-- <%
String name=request.getParameter("name");
if(name==null){//null일 때 대체할 값으로 변경해야 함.
	 name="";
	}
%> --%>
<!--EL로 하는 방법 자동으로 null처리를 ""로 해준다.  -->
<!-- form태그에 action="url"을 적지 않으면 자신의 페이지가 호출되어 실행된다. -->
<form method="get">
이름 :  <input name="name" value="${param.name }">
<input type="submit" value="확인">
</form>
이름 : ${param.name}
</body>
</html>