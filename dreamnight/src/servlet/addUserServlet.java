package servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import updateTo.ToUser;
import entity.User;



/**
 * Servlet implementation class addUserServlet
 */
//@WebServlet("/addUserServlet")
public class addUserServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public addUserServlet() {
	        super();
	        // TODO Auto-generated constructor stub

	}
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String account0="";
		String nikename0="";
		String password0="";
		String security0="";
		String answer0="";
		try{
			account0=request.getParameter("account");
			nikename0=request.getParameter("nikename");
			password0=request.getParameter("password");
			security0=request.getParameter("security");
			answer0=request.getParameter("answer");
			
			
			System.out.println(security0);
		}catch(NumberFormatException e){
			
		}
		User user=new ToUser().get(account0);
		if(user!=null){
			request.setAttribute("user", "账号重复，请重新输入！");
			request.getRequestDispatcher("./register.jsp").forward(request, response);
		}
		else{
		User s=new User(account0,nikename0,password0,security0,answer0);
		new ToUser().add(s);
		request.getRequestDispatcher("./login.jsp").forward(request, response);
		}
		
		
	}

}
