package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entity.User;
import updateTo.ToUser;
public class ToConfirmPassword extends HttpServlet {
	protected void service(HttpServletRequest request, 
			HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		
		String account="";
		try {
			account = request.getParameter("username");
			System.out.println("hello"+account);
		} catch (NumberFormatException e) {
			
		}
		ToUser toUser=new ToUser();
		User user=toUser.get(account);
		if(user!=null){
			System.out.println("right");
		    request.setAttribute("security", user.getSecurity());
		    request.setAttribute("answer", user.getAnswer());
		    request.setAttribute("account", account);
			request.getRequestDispatcher("forgetpassword.jsp").forward(request, response);
	}
		else request.getRequestDispatcher("./register.jsp").forward(request, response);
	    request.setAttribute("account", account);
	}
}
