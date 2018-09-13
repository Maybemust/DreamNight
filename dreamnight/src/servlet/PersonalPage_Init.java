package servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import updateTo.ToUser;

public class PersonalPage_Init  extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		User USER=(User)request.getSession().getAttribute("USER");
		
		String account="";

		try{		
			account = request.getParameter("account");
		}catch(NumberFormatException e){
			
		}
		account=USER.getAccount();
		ToUser touser = new ToUser();
		User user = touser.get(account);
		request.setAttribute("user", user);
		request.getRequestDispatcher("personal_information.jsp").forward(request, response);
	}
}
