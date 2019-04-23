package ch01;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*MVC(모델2방식):
 * model - 데이터 처리(dao,dto)
 * View- 화면 처리(jsp)
 * Controller - 프로그램의 흐름 제어(서블릿)
 * @:어노테이션 (코드에 대한 주석처리, 매핑시) - 최신 기술 xml형식이 과거 기술 요즘은 @방식으로 간다.
 * 
 * 서블릿 - 서버에서 실행되는 자바 프로그램(이라고 이해하면 된다.)
 *	HttpServletRequest - 서버에 대한 요청 처리
 *	HttpServletResponse - 클라이언트에 대한 응답 처리
 */
/**
 * Servlet implementation class WhileController
 */
//@WebServlet("/WhileController")-- 이거 최신 기술이래
public class WhileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// method에서(form태그 action)get 방식으로 호출 할때 실핼되는 코드
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		int number = Integer.parseInt(request.getParameter("number"));
		int num=Integer.parseInt(request.getParameter("num"));
		int result=1;
		for(int i=1; i<=num; i++) {
			result*=number;
		}
		System.out.println("결과 :"+result);//톰캣 콘솔상에 출력됨
		request.setAttribute("result", result);//setAttribute은 Object타입값을 가짐
		//request.getRequestDispatcher(url): 이동할 url의 정보를 분석하는 객체
		RequestDispatcher rd=request.getRequestDispatcher("/ch01/while_result.jsp");
		rd.forward(request, response);
		//화면이  while_result.jsp(url 주소는 그대로 유지됨)
	}

	//post 방식으로 호출할때 실행되는 코드 요즘은 다쓰는 추세래
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);//doGet을 호출해서 처리
	}

}
