/**
 * 
 */
package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import updateTo.ToThread;

/**
 * @author ¿Ó—Û
 *
 */
public class DeleteSkipServlet extends HttpServlet{
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		User USER=(User)request.getSession().getAttribute("USER");
		
		String id = request.getParameter("id");
		String from=request.getParameter("from");
		new ToThread().delete(Integer.parseInt(id));
		request.getRequestDispatcher(from).forward(request, response);
		 
	}
}
