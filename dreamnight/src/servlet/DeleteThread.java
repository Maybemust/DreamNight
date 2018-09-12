package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import updateTo.ToThread;

public class DeleteThread extends HttpServlet{
	private ToThread tothread = new ToThread();
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");

		String id = request.getParameter("id");
		tothread.delete(Integer.parseInt(id));

		 response.sendRedirect("admin");
	}
}
