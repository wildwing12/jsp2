<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=getServletInfo() %><br>
<!-- 개발경로가 아닌 서비스 경로(배포 경로) -->
<%=application.getRealPath("/") %>
<!-- D:\work_java\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\
Catalina\localhost\jsp01\org\apache\jsp\ch01
jsp가 변환환 java파일을 보면 jsp와 반대로 자바코드에 html이 이식되어짐.
실제로 웹서버에 의해 JSP가 이처럼 java코드로 변환되어 실행되어짐 -->
</body>
</html>