package board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dto.BoardDTO;

//@WebServlet("/BoardController")//어노테이션은 꼭지워야함.(web.xml에서 사용했을 시에
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//클라이언트에서 요청한 주소
		String url=request.getRequestURL().toString();//url로 할때는 toString()을 붙여야함
		//웹 프로젝트의 식별자
		String contextPath=request.getContextPath();
		BoardDAO dao= new BoardDAO();
		if(url.indexOf("list.do")!=-1) {
			//System.out.println("list.do호출");
			List<BoardDTO> list=dao.list();
			request.setAttribute("list", list);
			String page="/board/list.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
