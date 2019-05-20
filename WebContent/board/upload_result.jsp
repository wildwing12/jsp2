<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<!-- cos.jar에서 가져온 것 -->
<%@page import="com.oreilly.servlet.*" %>
<%@page import="com.oreilly.servlet.multipart.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
<%
//파일 업로드 위한 디렉토리 설정
//윈도우즈는 d:\\, 유닉스 c:/ 유닉스는 디렉토리라는 개념만 있고 드라이버라는 개념이 없다.
String upload_path="d:\\upload";
// 파일 업로드 최대 사이즈 설정
int size=10*1024*1024;//BYTE단위 (10mb)
String name="";
String subject="";
String filename="", filename2="";
int filesize=0, filesize2=0;

try{
	//MultipartRequest :request를 확장한 객체
	//new MultipartRequest(request,"옵로드 디렉토리", 제한용량, 인코딩 방식, 파일명 중복 방지 처리 옵션)
	//파일 중복 방지 처리 방법
	//1)A사람 :타임 스탬프_text.txt 업로드, B사람 : 타임 스탬트_text.tet
	//2)A사람 :text(1).txt 업로드 B사람 : text(2).txt 업로드 (파일 이름에다가 (숫자) 입력되게 함)
	MultipartRequest multi=new MultipartRequest(request, upload_path, size, "utf-8",new DefaultFileRenamePolicy());
	//DefaultFileRenamePolicy()가 파일 이름의 중복 방지 처리 한거임.
	name=multi.getParameter("name");//request.getParameter 와 같음
	subject=multi.getParameter("subject");
	Enumeration files=multi.getFileNames();//파일 이름을 가져옴
	String file1=(String)files.nextElement();//클라이언트 파일이름
	String file2=(String)files.nextElement();
	filename=multi.getFilesystemName(file1);//서버에 업로드 된 파일 이름
	File f1=multi.getFile(file1);//파일의 정보를 참조
	filesize=(int)f1.length();//파일의 사이즈(정수로 표현)
	filename2=multi.getFilesystemName(file2);//서버에 업로드 된 파일 이름
	File f2=multi.getFile(file1);//파일의 정보를 참조
	filesize2=(int)f2.length();//파일의 사이즈(정수로 표현)
	
}catch(Exception e){
	e.printStackTrace();
	
}
%>
이름 : <%=name %><br>
제목 :<%=subject %><br>
파일1 이름 :<%=filename %><br>
파일1 크기 :<%=filesize %><br>
파일2 이름 :<%=filename2 %><br>
파일2 크기 :<%=filesize2 %><br>
</body>
</html>