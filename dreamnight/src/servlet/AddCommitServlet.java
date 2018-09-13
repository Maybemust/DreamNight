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

public class AddCommitServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String commitFromAccount="";
		
		//Date now =new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp commitPostTime=Timestamp.valueOf(sdf.format(new Date()));
		
		int threadID=0;
		String commitText="";
		
		//String threadLastCommitName = "";//最晚发帖人
		//String threadLastText = "";//最晚发帖内容
		int start = 0;
		try{		
			commitText=request.getParameter("textfield");
			
			threadID=Integer.parseInt(request.getParameter("threadID"));

			commitFromAccount = request.getParameter("fromAccount");
			System.out.println("==========>"+commitFromAccount);

		}catch(NumberFormatException e){
			
		}
		System.out.print(commitText);

		Commit commit=new Commit(commitFromAccount,commitPostTime,commitText,threadID);
		new ToCommit().add(commit);
		
		System.out.println("==========>"+commitPostTime.toString());
		int count = 5;

		int next = start + count;
		int pre = start - count;

		int total = new ToCommit().getTotal(threadID);
		
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

		List<Commit> commits = new ToCommit().list(start, count, threadID);
		
		
		request.setAttribute("commits", commits);
		request.setAttribute("threads", threads);
		request.setAttribute("threadID", threadID);
		
		request.setAttribute("committime", commitPostTime);
		System.out.println("=======w===>"+commitPostTime.toString());

		request.setAttribute("thread", threads);

//		String  threadName = threads.getThreadName();
//		String threadFromAccount = threads.getFromAccount();
//		int threadNumCommit = threads.getNumCommit();
//		int threadNumRead = threads.getNumReading();
//		String threadText = threads.getText();
//		
//		request.setAttribute("threadText", threadText);
//		request.setAttribute("threadFromAccount", threadFromAccount);
//		request.setAttribute("threadName", threadName);
//		request.setAttribute("threadNumCommit", threadNumCommit);
//		request.setAttribute("threadNumRead", threadNumRead);
//		request.setAttribute("commitPostTime", commitPostTime);
//		
//		request.setAttribute("commitFromAccount", commitFromAccount);

		request.getRequestDispatcher("threadDetails.jsp").forward(request, response);

	}

}


