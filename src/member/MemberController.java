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

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, 
	IOException {
		//사용자가 요청한 주소
		String uri=request.getRequestURI();
		String context=request.getContextPath();
		MemberDAO dao = new MemberDAO();
		
		//A.indexOf(B) A의 내용 중에서 B가 포함된 인덱스 값
		//요청된 uri중에서 list.do라는 문자열이 인덱스값을 갖고 있다면
		if(uri.indexOf("list.do") != -1) {
			System.out.println("list.do호출..");
			System.out.println(request.getRequestURI());
			System.out.println(uri.indexOf("list.do"));
			//HashMap 생성
			Map<String,Object> map=new HashMap<>();
			//dao의 memberList()호출 후 리턴받은 값을 list에 저장
			List<MemberDTO> list=dao.memberList();
			//DAO의 ArrayList에 담은 값들을 Map에 자료 저장
			map.put("list", list);
			//ArrayList에 담겨진 레코드의 갯수를 저장
			map.put("count", list.size());
			
			//최종적으로 map에 담긴값을 setAttribute에 저장
			request.setAttribute("map", map);//key,value
			//출력을 위해 포워딩할 uri지정
			String page="/ch06/member_list.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);//포워딩
		}else if(uri.indexOf("join.do") != -1) {//회원등록
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String hp=request.getParameter("hp");
			String zipcode=request.getParameter("zipcode");
			String address1=request.getParameter("address1");
			String address2=request.getParameter("address2");
			MemberDTO dto=new MemberDTO();//MemberDTO생성
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setHp(hp);
			dto.setZipcode(zipcode);
			dto.setAddress1(address1);
			dto.setAddress2(address2);
			dao.insert(dto);//추가
		}else if(uri.indexOf("view.do") != -1) {
			String userid=request.getParameter("userid");
			//System.out.println("클릭한 아이디:"+userid);
			MemberDTO dto=dao.memberDetail(userid);
			request.setAttribute("dto", dto);
			String page="/ch06/member_view.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("update.do") != -1) {
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String hp=request.getParameter("hp");
			String zipcode=request.getParameter("zipcode");
			String address1=request.getParameter("address1");
			String address2=request.getParameter("address2");
			MemberDTO dto=new MemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setHp(hp);
			dto.setZipcode(zipcode);
			dto.setAddress1(address1);
			dto.setAddress2(address2);
			//레코드 수정 처리
			dao.update(dto);
			//페이지 이동
			response.sendRedirect(context+"/ch06/member.jsp");
		}else if(uri.indexOf("delete.do") != -1) {
			String userid=request.getParameter("userid");
			//레코드 삭제
			dao.delete(userid);
			//페이지 이동
			response.sendRedirect(context+"/ch06/member.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
