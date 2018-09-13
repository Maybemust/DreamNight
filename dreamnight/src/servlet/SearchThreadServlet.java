package servlet;

import java.io.IOException;
import java.net.URLDecoder;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Date;

import updateTo.ToCommit;
import updateTo.ToThread;
import updateTo.ToUser;
import entity.Commit;
import entity.Thread;
import entity.User;


public class SearchThreadServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		User USER=(User)request.getSession().getAttribute("USER");
		String threadName="";
		int start = 0;

		try{		
			
			threadName = request.getParameter("threadName");
			threadName = URLDecoder.decode(threadName, "UTF-8");
			System.out.println(threadName);
			start = Integer.parseInt(request.getParameter("start"));
			
		}catch(NumberFormatException e){
			
		}
		

		List<Thread> threads = new ToThread().searchThread(threadName);
		
		int total = threads.size();
		System.out.print("p2\n");
		System.out.print(total);
		
		int count = 5;

		int next = start + count;
		int pre = start - count;

//		int total = new ToCommit().getTotal(threadID);
//		System.out.print(total);
		
		int last;
		if (0 == total % count)
			last = total - count;
		else
			last = total - total % count;

		
		pre = pre < 0 ? 0 : pre;
		next = next > last ? last : next;

		threads = new ToThread().list2(start, count,threadName);

		request.setAttribute("next", next);
		request.setAttribute("pre", pre);
		request.setAttribute("last", last);

		
		request.setAttribute("threads", threads);
		request.setAttribute("searchName", threadName);

		request.getRequestDispatcher("searchThread.jsp").forward(request, response);

	}

}


