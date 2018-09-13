package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entity.User;
import updateTo.ToUser;
public class ToResetPassword extends HttpServlet {
	protected void service(HttpServletRequest request, 
			HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String password="";
		String password2="";
		String account="";
		try {
			password = request.getParameter("password");
			password2=request.getParameter("password2");
			account=request.getParameter("account");
			System.out.println(account+"11111");
		} catch (NumberFormatException e) {
		}
		//User user=new User("username","","","","");
		ToUser toUser=new ToUser();
		User user=toUser.get(account);
		request.setAttribute("account", account);
		if(user!=null){
		if(password.equals(password2)){
			user.setPassword(password);
			toUser.update(user);
			request.getRequestDispatcher("firstPage").forward(request, response);
			
		}
		else{
			request.getRequestDispatcher("wrong.jsp").forward(request, response);
		
		}
	}
		else request.getRequestDispatcher("./register.jsp").forward(request, response);
	    
		
	}
}