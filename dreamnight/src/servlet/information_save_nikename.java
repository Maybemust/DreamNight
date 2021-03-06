package servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.*;
import updateTo.*;

public class information_save_nikename  extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		User USER=(User)request.getSession().getAttribute("USER");
		
		String nickname="";
		String account="";
		try{
			account = request.getParameter("account");
			nickname = request.getParameter("nikename");
		}catch(NumberFormatException e){
			
		}
		account=USER.getAccount();
		ToUser touser = new ToUser();
		touser.update_nikename(account,nickname);
		USER=touser.get(USER.getAccount());
		request.getSession().setAttribute("USER", USER);
		System.out.println(account);
		request.getRequestDispatcher("getUser?account="+account).forward(request, response);
	}
}
