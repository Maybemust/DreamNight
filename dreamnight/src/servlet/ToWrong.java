package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import updateTo.ToUser;

public class ToWrong extends HttpServlet {
	protected void service(HttpServletRequest request, 
			HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		String account="";
		try {
			account = request.getParameter("account");
			System.out.println("hello"+account);
		} catch (NumberFormatException e) {
			
		}
		ToUser toUser=new ToUser();
		User user=toUser.get(account);
		if(user!=null){
			System.out.println("righttowrong");
		    request.setAttribute("account", account);
			request.getRequestDispatcher("./reset password.jsp").forward(request, response);
	}
		else  {request.setAttribute("account", account);
			request.getRequestDispatcher("./register.jsp").forward(request, response);
		}
	}

}
