package cafe;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDTO;

@WebServlet("/cafe_servlet/*")
public class CafeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		System.out.println(uri);
		String context = request.getContextPath();
		System.out.println(context);
		CafeDAO dao=new CafeDAO();
		if(uri.indexOf("join_bcrypt.do")!=-1) {
			String id=request.getParameter("id");
			String passwd=request.getParameter("passwd");
			String name=request.getParameter("name");
			CafeDTO dto=new CafeDTO();
			dto.setId(id);
			dto.setPasswd(passwd);
			dto.setName(name);
			dao.insertBcypt(dto);
		}else if(uri.indexOf("login_bcrypt.do")!=-1) {
			String id=request.getParameter("id");
			String passwd=request.getParameter("passwd");
			System.out.println("아이디"+id);
			System.out.println("비밀번호"+passwd);
			CafeDTO dto=new CafeDTO();
			dto.setId(id);
			dto.setPasswd(passwd);
			String result=dao.login_cafe(dto);
			System.out.println(result);
			request.setAttribute("result", result);
			String page="/cafe/login_result.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
