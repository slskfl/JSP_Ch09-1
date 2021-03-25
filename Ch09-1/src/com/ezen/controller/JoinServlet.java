package com.ezen.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.MemberDAO;
import com.ezen.dto.MemberVO;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//페이지 이동
		String path="member/join.jsp";
		RequestDispatcher dispatcher
			=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}
	/** * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response) */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		 System.out.println("join.do - doPost() 호출");
		 request.setCharacterEncoding("UTF-8");
		 
		 //데이터 읽어오기
		 String name=request.getParameter("name");
		 String userid=request.getParameter("userid");
		 String pwd = request.getParameter("pwd");
		 String email = request.getParameter("email");
		 String phone = request.getParameter("phone");
		 String admin=request.getParameter("admin");
			
		 //데이터 바인딩
		 MemberVO memberVO=new MemberVO();
		 memberVO.setName(name);
		 memberVO.setUerId(userid);
		 memberVO.setPwd(pwd);
		 memberVO.setEmail(email);
		 memberVO.setPhone(phone);
		 memberVO.setAdmin(Integer.parseInt(admin));
		 
		 MemberDAO memberDAO= MemberDAO.getInstance();
		 int result=memberDAO.insertMember(memberVO);
		 
		 if(result == 1) { 
			 request.setAttribute("msg", "회원가입에 성공했습니다."); 
		 }else { 
			 request.setAttribute("msg", "회원가입에 실패했습니다.");
		 }
		 
		 String path="member/login.jsp";
		 RequestDispatcher dispatch=request.getRequestDispatcher(path);
		 dispatch.forward(request, response);
	}

}
