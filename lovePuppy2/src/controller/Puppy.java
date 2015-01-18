package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.PuppyDAO;
import model.domain.MemberBean;
import model.domain.PuppyBean;

//이진희코드
public class Puppy extends HttpServlet {
	// test 나중에 수정할 코드
	public String SMALL_PIC = "사진1";
	public String BIG_PIC = "사진2";

	public Puppy() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post 진입");
		process(request, response);
	}

	protected void process(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("process 진입");
		request.setCharacterEncoding("euc-kr");

		String command = request.getParameter("command");

		if (command.equals("insert")) {
			insert(request, response);
		}else if(command.equals("updatePuppy")){
			HttpSession session = request.getSession();
			PuppyBean pb2 = (PuppyBean)session.getAttribute("puppy");
			session.setAttribute("puppy", pb2);
			updatePuppy(request, response);
		}
	}

	public void insert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("insert 진입");
		HttpSession session = request.getSession();
		int MemberNum = (int) session.getAttribute("memberNum");
		PuppyBean bean = new PuppyBean(request.getParameter("name").trim(),
				Integer.parseInt(request.getParameter("age")), request
						.getParameter("gender").trim(), request.getParameter(
						"kind").trim(), request.getParameter("size").trim(),
				MemberNum, SMALL_PIC, BIG_PIC);

		String url = "error.jsp";
		try {
			System.out.println("jsp try1");
			PuppyDAO.insert(bean);
			// request.getSession().setAttribute("bean", bean);
			url = "puppy/enrollSuccess.jsp";
			System.out.println("jsp try");
		} catch (SQLException e) {
			System.out.println("catch");
			request.setAttribute("error", "puppy 등록 에러");
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
		System.out.println("jsp 끝");

	}
	
	public void updatePuppy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		PuppyBean pb2 = (PuppyBean)session.getAttribute("puppy");
		pb2.setMemberNum(Integer.parseInt(request.getParameter("memberNum").trim()));
		
		
		System.out.println(pb2.getMemberNum());
		
		
		String url = "error.jsp";		
		
		
		pb2.setPuppyName(request.getParameter("pName").trim());
		pb2.setPuppyKind(request.getParameter("pKind").trim());
		pb2.setPuppyGender(request.getParameter("pGender").trim());	
		pb2.setPuppyAge(Integer.parseInt(request.getParameter("pAge").trim()));
		pb2.setPuppySize(request.getParameter("pSize").trim());
		System.out.println(pb2.getMemberNum());
		try{				
			PuppyDAO.updatePuppy(pb2);			
			url = "index.jsp";
			System.out.println("강아지 정보 수정 완료");
		}catch(SQLException e){
			e.printStackTrace();
			request.setAttribute("error", "에러");	
		}
		request.getRequestDispatcher(url).forward(request, response);	
	}
}
