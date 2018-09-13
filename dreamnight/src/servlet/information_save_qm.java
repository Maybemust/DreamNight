package servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.*;
import updateTo.*;

public class information_save_qm  extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		User USER=(User)request.getSession().getAttribute("USER");
		
		String qm="";
		String account="";

		try{
			account = request.getParameter("account");
			qm=request.getParameter("personality");
		}catch(NumberFormatException e){
			
		}
		account=USER.getAccount();
		ToUser touser = new ToUser();
		touser.update_qm(account,qm);
		request.getRequestDispatcher("getUser?account="+account).forward(request, response);
	}
}
