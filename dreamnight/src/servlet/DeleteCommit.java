/**
 * 
 */
package servlet;

/**
 * @author ����
 *
 */

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import updateTo.ToCommit;
import entity.Thread;
import entity.User;
import entity.Commit;

public class DeleteCommit extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		User USER=(User)request.getSession().getAttribute("USER");

		int start = 0;
		int count = 5;
		int id=0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
			
		} catch (NumberFormatException e) {
		
		}
		String fromaccount=USER.getAccount();
		new ToCommit().delete(id);
		int next = start + count;
		int pre = start - count;

		int total = new ToCommit().getTotal();

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

		List<Commit> Commits = new ToCommit().list(start, count,fromaccount);
		request.setAttribute("Commits", Commits);

		request.getRequestDispatcher("PersonCenter2.jsp").forward(request, response);

	}
}
