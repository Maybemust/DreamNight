package servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import updateTo.ToUser;

public class information_save_nikename  extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nickname="";
		String account="";
		try{
			account = request.getParameter("account");
			nickname = request.getParameter("nikename");
		}catch(NumberFormatException e){
			
		}
	
		ToUser touser = new ToUser();
		touser.update_nikename(account,nickname);
		System.out.println(account);
		request.getRequestDispatcher("getUser?account="+account).forward(request, response);
	}
}
