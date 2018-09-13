package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import updateTo.ToUser;
public class logindata extends HttpServlet {
	protected void service(HttpServletRequest request, 
			HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		String username="";
		String password="";
		try {
			username = request.getParameter("username");
			password=request.getParameter("password");
			System.out.println(username);
			System.out.println(password);
		} catch (NumberFormatException e) {
			
		}
		
		ToUser toUser=new ToUser();
		//System.out.println("1111111111111111111111111111111");
		User user=toUser.get(username);
		if(user!=null){
		if (password.equals(user.getPassword())){
			request.getSession().setAttribute("USER", user);
			//System.out.println("22222222222222222222222222222");
			request.getRequestDispatcher("firstPage").forward(request, response);
			//System.out.println("333333333333333333333333333");
		    request.setAttribute("account", username);
		}
		else {
		    request.setAttribute("security", user.getSecurity());
		    request.setAttribute("answer", user.getAnswer());
			request.getRequestDispatcher("loginFailing.jsp").forward(request, response);
		}
		}
		else request.getRequestDispatcher("./register.jsp").forward(request, response);
	}

}
