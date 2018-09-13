package servlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Thread;
import updateTo.ToThread;

public class EditTopicServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		int threadID = 0;
		try{
			threadID= Integer.parseInt(request.getParameter("threadID"));
		}catch(NumberFormatException e){
			 
		}
		
		String from = request.getParameter("fromPage");
		Thread thread = new ToThread().get(threadID);
		
		
		System.out.println("--" + threadID);
		System.out.println("--" + thread.getThreadName());
		
		request.setAttribute("thread", thread);
		request.setAttribute("fromPage", from);
		
		System.out.println(thread.getThreadName());
		
		//response.sendRedirect(request.getParameter("admin"));
		request.getRequestDispatcher("EditTopic.jsp").forward(request, response);
		
	}
}
