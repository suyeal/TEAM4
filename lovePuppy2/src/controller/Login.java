package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.MemberDAO;
import model.domain.MemberBean;

public class Login extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void process(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String command = request.getParameter("command");
		String url = null;
		// //////////서상욱-로그인/로그아웃///////////////////
		if (command.equals("login")) {
			String email = request.getParameter("email");
			String pw = request.getParameter("pw");
			try {
				MemberBean mb = MemberDAO.checkMember(email, pw);
				if (mb != null) {
					HttpSession session = request.getSession();
					session.setAttribute("member", mb);
					session.setAttribute("memberNum", mb.getMemberNum());
					url = "index.jsp";
				} else {
					url = "login/loginError.jsp";
				}
			} catch (Exception e) {
				url = "login/loginError.jsp";
			}
			request.getRequestDispatcher(url).forward(request, response);
		} else if (command.equals("logout")) {
			try {
				HttpSession session = request.getSession();
				session.removeAttribute("member");
				url = "index.jsp";
			} catch (Exception e) {
				url = "login/loginError.jsp";
			}
			request.getRequestDispatcher(url).forward(request, response);
		}
		// //////////서상욱-로그인/로그아웃///////////////////
	}
}
