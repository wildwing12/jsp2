<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- dbcp(DataBase Connection Pool) 설정 함으로 Db연결 생성과 
 <Resource name="oraDB" auth="Container" => 자바 코드에서 참조하는 이름
		driverClassName="oracle.jdbc.driver.OracleDriver" =>JDBC드라이버
		maxTotal="50"=>DB커넥션
		maxIdle="10" =>커넥션 풀에서 유지될 수 있는 idle상태 커넥션의 최대 갯수.(기본 값은 8로 되어 있음)
		maxWaitMillis="-1" =>여분의 커넥션이 생길때까지 기다리는 시간
		type="javax.sql.DataSource"
		url="jdbc:oracle:thin:@localhost:1521:xe" 
		username="java" =>DB접속 계정
		password="java1234"=>비밀전호 /> -->
</body>
</html>