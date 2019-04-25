package practice;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/kkk/*")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		System.out.println("서버 돌아감");
		System.out.println(uri);
		if(uri.indexOf("join.do")!=-1) {
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			System.out.println(userid);
			System.out.println(passwd);
			LoginDAO dao=new LoginDAO();
			String name=dao.listCheck(userid, passwd);
			String message="";
			String page="";
			if(name==null) {
				message="아이디 또는 비밀번호가 일치하지 않습니다.";
				message=URLEncoder.encode(message, "utf-8");
				page="/project/login.jsp?message="+message;
			}else {
				message=name+"님 환영합니다.";
				HttpSession session=request.getSession();
				session.setAttribute("userid", userid);
				session.setAttribute("message", message);
				page="/project/login_success.jsp";
			}
			System.out.println(message);
			response.sendRedirect(request.getContextPath()+page);
		}else if(uri.indexOf("joinout.do")!=-1) {
			HttpSession session=request.getSession();
			session.invalidate();
			String message=URLEncoder.encode("로그아웃되었습니다.", "utf-8");
			response.sendRedirect(request.getContextPath()+"/project/login.jsp?message="+message);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
