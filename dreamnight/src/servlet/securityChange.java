package servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.*;
import updateTo.*;

public class securityChange  extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		User USER=(User)request.getSession().getAttribute("USER");
		
		String oldque="";
		String oldans="";
		String newque="";
		String newans="";
		String account="";
		try{
			oldque = request.getParameter("oldque");
			oldans = request.getParameter("oldans");
			newque = request.getParameter("newque");
			newans = request.getParameter("newans");
			account = request.getParameter("security_account");
		}catch(NumberFormatException e){
			
		}
		account=USER.getAccount();
		ToUser touser = new ToUser();
		User user = touser.get(account);
		if(user.getAnswer().equals(oldans)){
			user.setSecurity(newque);
			user.setAnswer(newans);
			touser.update(user);
		}
		System.out.println(oldque + " " + newque + " " + oldans + " " + newans + " " + account);
		request.getRequestDispatcher("getUser?account="+account).forward(request, response);
	}
}