package servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.*;
import updateTo.*;

public class PdChange  extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		User USER=(User)request.getSession().getAttribute("USER");
		
		String oldpd="";
		String account="";
		String newpd="";
		String checkpd="";
		try{
			oldpd = request.getParameter("oldpd");
			newpd = request.getParameter("newpd");
			checkpd = request.getParameter("checkpd");
			account = request.getParameter("pd_account");
		}catch(NumberFormatException e){
			
		}
		account=USER.getAccount();
		ToUser touser = new ToUser();
		User user = touser.get(account);
		if(user.getPassword().equals(oldpd)){
			user.setPassword(newpd);
			touser.update(user);
		}
		System.out.println(oldpd + " " + newpd + " " + checkpd + " " + account);
		request.getRequestDispatcher("getUser?account="+account).forward(request, response);

	}
}
