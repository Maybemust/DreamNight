package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import updateTo.ToThread;

public class SetTop extends HttpServlet{
	private ToThread tothread = new ToThread();
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");

		String id = request.getParameter("id");
		String key = request.getParameter("key");
		
		entity.Thread thread = tothread.get(Integer.parseInt(id));
		thread.setTopLabel(Integer.parseInt(key));
		
		tothread.update(thread);

		 response.sendRedirect("admin");
	}

}
