package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.MemberDAO;
import model.domain.MemberBean;

/**
 * Servlet implementation class Member
 */
public class Member extends HttpServlet {
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String command = (String)request.getParameter("command");
		String url = null;
		// //////////�����-ȸ��Ż��///////////////////
		if (command.equals("dropout")) {
			String email = request.getParameter("email");
			String pw = request.getParameter("pw");
			try {
				MemberBean mb = MemberDAO.checkMember(email, pw);
				if (mb != null) {
					HttpSession session = request.getSession();
					System.out.println(mb.getMemberNum());
					MemberDAO.wantDel(mb.getMemberNum());
					MemberDAO.matchDel(mb.getMemberNum());
					MemberDAO.puppyDel(mb.getMemberNum());
					MemberDAO.memberDel(mb.getMemberNum());
					session.removeAttribute("member");
					url = "login/dropoutmsg.jsp";
				} else {
					url = "login/loginError.jsp";
				}
			} catch (Exception e) {
				url = "login/loginError.jsp";
			}
			request.getRequestDispatcher(url).forward(request, response);
		}else if(command.equals("signup")){
			System.out.println("����!");
			String email = request.getParameter("email");
			String pw = request.getParameter("password");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String local = request.getParameter("local");
			if((request.getParameter("password")).equals(request.getParameter("password2"))){
				System.out.println("�н����� ��ġ?!!");
				MemberBean member = MemberDAO.joinMember(email, pw, name, phone, local);
				HttpSession session = request.getSession();
				//session.setAttribute("member", member);
				url = "login/login.jsp";
				System.out.println("member  : " + member);
			}else{
				url = "signin/signinError.jsp";
			}
			request.getRequestDispatcher(url).forward(request, response);
		}else if(command.equals("update")){			
			url = "loginError.jsp";		
			HttpSession session = request.getSession();
			MemberBean mb = (MemberBean)session.getAttribute("member");		
			mb.setPw(request.getParameter("pw").trim());
			mb.setPhone(request.getParameter("phone").trim());	
			mb.setLocal(request.getParameter("local").trim());
			
			try{				
				MemberDAO.updateMember(mb);			
				url = "index.jsp";
				System.out.println("������� ���� �Ϸ�");
			}catch(SQLException e){
				e.printStackTrace();
				request.setAttribute("error", "����");	
			}
			request.getRequestDispatcher(url).forward(request, response);	
		}
	}
}
