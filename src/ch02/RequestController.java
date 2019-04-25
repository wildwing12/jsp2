package ch02;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ch02_servlet/request.do")
public class RequestController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//get 방식을 호출할때
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩 설정
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		int age=Integer.parseInt(request.getParameter("age"));
		String gender=request.getParameter("gender");
		String hobby = request.getParameter("hobby");
		//Map - 순서x, 빠른 검색을 위해 사용
		//List - 순서o
		//LinkedList - 추가 삭제가 빈번한 자료들 
		//Set - 순서x. 중복값을 걸러줌
		//Map<key자료형, value자료형>
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("name", name);//map.put(key,value);
		map.put("age", age);
		gender = gender.equals("m")? "남":"여";
		map.put("gender", gender);
		map.put("hobby", hobby);
		System.out.println(map);//콘솔에  출력해봄
		
		request.setAttribute("map", map);//전달할 데이터 저장("변수명",값);
		String page="/ch02/request_result2.jsp";
		RequestDispatcher rd=request.getRequestDispatcher(page);
		rd.forward(request, response);//foward방식은 화면전환(주소는 고정), 대용량 데이터 전송 가능
		
	}

	//post 방식을 호출할 때
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
