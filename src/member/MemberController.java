package member;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member_servlet/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사용자가 요청한 주소 
		String uri=request.getRequestURI();
		String context=request.getContextPath();
		MemberDAO dao=new MemberDAO();
		//a.indexof(b): a의 내용중에서  b가 포함된 인덱스 값
		//요청된 uri중에서 list.do라는 문자열의 인덱스 값을 갖고 있다면
		if(uri.indexOf("list.do")!=-1) {
			System.out.println("list.do호출...");
			System.out.println(request.getRequestURI());
			System.out.println(uri.indexOf("list.do"));
			//HashMap 생성
			Map<String,Object> map=new HashMap<>();
			//dao의 memberList()호출 후 리턴 받은 값을 list에 저장
			List<MemberDTO> list=dao.memberList();
			//DAO의 ArrayList에 담은 값들을 Map에 자료 저장
			map.put("list", list);
			//ArrayList에 담겨진 레코드의 갯수를 map에 저장
			map.put("count", list.size());
			//최종적으로 map에 담긴 값을 setAttribute에 저장
			request.setAttribute("map", map);//key, value
			//출력을 위해 포워딩할 uri지점
			String page="/ch06/member_list.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);//포워딩
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
