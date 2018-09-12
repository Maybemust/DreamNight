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
		int ustart = 0;
		int count = 12;

		try {
			start = Integer.parseInt(request.getParameter("start"));
		} catch (NumberFormatException e) {
			// 当浏览器没有传参数start时
		}
		
		try {
			ustart = Integer.parseInt(request.getParameter("ustart"));
		} catch (NumberFormatException e) {
			// 当浏览器没有传参数start时
		}
		
		int next = start + count;
		int pre = start - count;
		int unext = ustart + count;
		int upre = ustart - count;
		
		int total = tothread.getTotal();
		int utotal = touser.getTotal();

		int last;
		int ulast;
		if (0 == total % count)
			last = total - count;
		else
			last = total - total % count;
		
		if(0 == utotal % count)
			ulast = utotal - count;
		else
			ulast = utotal - utotal % count;

		pre = pre < 0 ? 0 : pre;
		next = next > last ? last : next;
		
		upre =upre < 0 ? 0 : upre;
		unext = unext > ulast ? ulast : unext;

		request.setAttribute("next", next);
		request.setAttribute("pre", pre);
		request.setAttribute("last", last);
		
		request.setAttribute("unext", unext);
		request.setAttribute("upre", upre);
		request.setAttribute("ulast", ulast);
		
		User user = (User)request.getSession().getAttribute("USER");
		
		List<entity.Thread> threads = tothread.list(start, count);
		List<entity.User> users = touser.list(ustart, count);
		request.setAttribute("threads", threads);
		request.setAttribute("account", user);
		request.setAttribute("users", users);
		
		request.getRequestDispatcher("Administrator.jsp").forward(request, response);
	}

}
