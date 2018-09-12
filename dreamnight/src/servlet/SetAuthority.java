package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import updateTo.ToThread;
import updateTo.ToUser;

public class SetAuthority extends HttpServlet{
	private ToUser touser = new ToUser();
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		User USER=(User)request.getSession().getAttribute("USER");

		String account = request.getParameter("account");
		//account=USER.getAccount();
		String key = request.getParameter("key");
		
		entity.User user = touser.get(account);
		user.setAuthority(Integer.parseInt(key));
		
		touser.update(user);

		 response.sendRedirect("admin");
	}
}
