<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%//4가지 영역
/*
pageContext(현재 페이지)
request(요청+응답 페이지)
session(사용자 단위)
application(서버 단위)
*/%>
<% String info=application.getServerInfo();
application.log("WAS 정보"+info);//콘솔에 출력
System.out.println("WAS 정보:" + info);//콘솔에 출력(검애ㅡㄴ색)
String path=application.getRealPath("/");
//개발 디렉토리가 아닌 서비스 디렉토리(배포 경로)
application.log("서비스 경로:"+path);//이거 있으면 서버 부하가 있음. 그래서 로깅툴이 이것들을 제거해준데. 
System.out.println("서비스 경로:"+ path);
 
application.setAttribute("message", "hello");
%>

<a href="application_rsult.jsp">서버 변수 확인</a>
</body>
</html>