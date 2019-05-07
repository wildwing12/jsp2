<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
1)JSTL(jsp standard tag library, JSP 표준 태크 라이브러리)
2)JSTL  사용 이유 : model1 은 JSP페이지 중심, MOdel2는 JAVA 코드(서블릿 , 모델)중심
.jsp웹페이지에서 java코드를 안쓸수는 없지만 이를 최소화 하기 위해 JSTL, EL기법을 씀, 
jsp내부의 복잡한 자바 코드를 대체하기 위한 태크
3)taglib prefix="태그 접두어"uri="태그라이브러리의 식별자"
4)Core tag(핵심 태그, 제일 주주 사용되는 태그들) = >태그 접두어로 접근
  예)prefix="c"
 -->
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <!-- set var="변수명" value="값" -->
 <c:set var="path" value="${pageContext.request.contextPath }" />
 
<!-- 위와 같은 코드를 워낙 자주 쓰이다 보니 header에 넣고 include시킴 
<%-- <% String path=request.getContextPath(); %> --%>%>-->