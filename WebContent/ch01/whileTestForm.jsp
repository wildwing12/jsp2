<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/jsp01/ch01_servlet/while.do">
곱해질 값 : <input name="number"><br>
곱해질 횟수 : <input name="num"><br>
<input type="submit" value="확인">
<!-- whileTestForm.jsp(요청 페이지)=> WhileController(처리) => while_result.jsp(화면 출력)  
먄약 db를 쓰면 DAO,DTO를 호출 해서 써야 한다.
xml에서 /ch01_servlet/*같이  우리가 약속했던  url을 실행한다.-->
</form>
</body>
</html>