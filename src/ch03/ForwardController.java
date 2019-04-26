package ch03;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/ForwardController")
public class ForwardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩 설정
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String color=request.getParameter("color");
		String[] hobby=request.getParameterValues("hobby");
		String[] food=request.getParameterValues("food");
		String message="";
		switch(color) {
		case "blue" : message="자기 탐구와 내적 성장 상징"; break;
		case "grenn" : message="기분의 안정과 온화함 상징"; break;
		case "red" : message="생명을 상징"; break;
		}
		message+="하는 색 입니다.";
		
		Map<String,Object> map=new HashMap<>();
		map.put("name", name);
		map.put("color", color);
		map.put("message", message);
		map.put("hobby", hobby);
		map.put("food", food);
		request.setAttribute("map", map);
		RequestDispatcher rd= request.getRequestDispatcher("/ch03/color.jsp");
		rd.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
