package servlet;

import java.io.IOException;
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

/**
 * Servlet implementation class FirstPageServlet
 */

public class ThreadDetailServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String threadName="";
		String threadFromAccount="";
		int threadNumCommit=0;//¸úÌùÊý
		int threadNumRead=0;//µã»÷Êý
		int threadID=0;
		String threadText="";

		int start = 0;
		try{		
			System.out.print("111111111111=");

			threadID=Integer.parseInt(request.getParameter("threadID"));
			
		}catch(NumberFormatException e){
			
		}
		System.out.print("threadID=");

		System.out.print(threadID);

		int count = 5;

		int next = start + count;
		int pre = start - count;

		int total = new ToCommit().getTotal(threadID);
		System.out.print(total);
		
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
		
		Thread threads = new ToThread().get(threadID);
		System.out.println(threads.toString());
		List<Commit> commits = new ToCommit().list(start, count, threadID);
//		System.out.print(commits.get(0).toString());
		
		request.setAttribute("commits", commits);
		request.setAttribute("thread", threads);
		//threadText = threads.getText();
//		
//		threadName = threads.getThreadName();
//		threadFromAccount = threads.getFromAccount();
//		threadNumCommit = threads.getNumCommit();
//		threadNumRead = threads.getNumReading();
//		threadText = threads.getText();
//
//		request.setAttribute("threadName", threadName);
//		request.setAttribute("threadFromAccount", threadFromAccount);
//		request.setAttribute("threadText", threadText);
//		request.setAttribute("threadNumRead", threadNumRead);
//		request.setAttribute("threadNumCommit", threadNumCommit);
		
		//System.out.print(threadText);
		//request.setAttribute("threadID", threadID);
		request.getRequestDispatcher("threadDetails.jsp").forward(request, response);

	}

}


