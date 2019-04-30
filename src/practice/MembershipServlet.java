package practice;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/kjh/*")
public class MembershipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		System.out.println(uri);
		if(uri.indexOf("login.do")!=-1) {
			String id=request.getParameter("id");
			String pwd=request.getParameter("pwd");
			MemebershipDAO dao=new MemebershipDAO();
			String name=dao.loginCheck(id, pwd);
			String message="";
			String page="";
			if(name==null) {
				message="아이디나 비밀번호가 일치 하지 않습니다.";
				message=URLEncoder.encode(message, "utf-8");
				page="/practice/membershipLogin.jsp?message="+message;
			}else {
				message=name+"님 환영합니다.";
				HttpSession session=request.getSession();
				session.setAttribute("id", id);
				session.setAttribute("message", message);
				page="/practice/membershipsuccess.jsp";
			}
			response.sendRedirect(request.getContextPath()+page);
		}else if(uri.indexOf("logout.do")!=-1){
			HttpSession session=request.getSession();
			session.invalidate();
			String message=URLEncoder.encode("로그아웃 되었습니다.", "utf-8");
			response.sendRedirect(request.getContextPath()+"/practice/membershipLogin.jsp?message=?"+message);
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
