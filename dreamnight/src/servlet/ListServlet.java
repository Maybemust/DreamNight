package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import updateTo.ToThread;
import updateTo.ToUser;

public class ListServlet extends HttpServlet{
	private ToThread tothread = new ToThread();
	private ToUser touser = new ToUser();
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		int start = 0;
		int count = 5;

		try {
			start = Integer.parseInt(request.getParameter("start"));
		} catch (NumberFormatException e) {
			// 当浏览器没有传参数start时
		}

		int next = start + count;
		int pre = start - count;
		
		int total = tothread.getTotal();

		int last;
		if (0 == total % count)
			last = total - count;
		else
			last = total - total % count;

		pre = pre < 0 ? 0 : pre;
		next = next > last ? last : next;

		request.setAttribute("next", next);
		request.setAttribute("pre", pre);
		request.setAttribute("last", last);
		
		String account = request.getParameter("account");
		User user = new ToUser().get(account);
		
		List<entity.Thread> threads = tothread.list(start, count);
		List<entity.User> users = touser.list();
		request.setAttribute("threads", threads);
		request.setAttribute("account", user);
		request.setAttribute("users", users);

		request.getRequestDispatcher("Administrator.jsp").forward(request, response);
	}

}
