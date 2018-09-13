package servlet;


import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Thread;
import entity.User;
import updateTo.ToThread;

public class SaveEditTopicServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		User USER=(User)request.getSession().getAttribute("USER");
		String text = "";
		String threadID = "";
		Date date = new Date();
		Timestamp date1 = new Timestamp(date.getTime());
		text = request.getParameter("text");
		
		System.out.println(text);
		
		threadID = request.getParameter("threadID");
		Thread thread = new ToThread().get(Integer.parseInt(threadID));
		thread.setText(text);
		thread.setLastTime(date1);
		thread.setThreadName(request.getParameter("threadName"));
		ToThread toThread = new ToThread();
		toThread.update(thread);
		response.sendRedirect(request.getParameter("fromPage"));
	}
}
