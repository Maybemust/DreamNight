package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import updateTo.ToUser;
public class toForgetPassword extends HttpServlet {
	protected void service(HttpServletRequest request, 
			HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String answer="";
		String account="";
		try {
			answer = request.getParameter("answer");
			account=request.getParameter("account");
			System.out.println(answer+"  "+account);
		} catch (NumberFormatException e) {
			
		}
		//User user=new User("username","","","","");
		ToUser toUser=new ToUser();
		User user=toUser.get(account);
		if(user!=null){
			 request.setAttribute("account", account);
		if(answer.equals(user.getAnswer())){
			request.getRequestDispatcher("./reset password.jsp").forward(request, response);
            System.out.println(" aaaaaaaaaaaaa "+account);
		}
		else{

			request.getRequestDispatcher("wrongAnswer.jsp").forward(request, response);
		    
		}
	}
		else { request.setAttribute("account", account);
			request.getRequestDispatcher("./register.jsp").forward(request, response);
		}
	}
}
