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
@WebServlet("/FirstPageServlet")
//public class FirstPageServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public FirstPageServlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//
//}


public class FirstPageServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		User USER=(User)request.getSession().getAttribute("USER");
		String threadName="";
		String threadFromAccount="";
		int threadNumCommit=0;//跟贴数
		int threadNumRead=0;//点击数
		Timestamp threadPostTime=null;
		Timestamp threadLastCommitTime=null;
		int threadID=0;
		int threadTopLabel=0;
		String threadText="";
		
		//String threadLastCommitName = "";//最晚发帖人
		//String threadLastText = "";//最晚发帖内容
		int start = 0;
		int id=0;
		try{		

			start = Integer.parseInt(request.getParameter("start"));
			
		}catch(NumberFormatException e){
			
		}
//		Thread s=new Thread(threadName, threadFromAccount, threadNumCommit, threadNumRead, threadPostTime, threadLastCommitTime, 
//				threadID, threadTopLabel, threadText);
//		new ToThread().add(s);
		
//		request.getSession().setAttribute("currUser", arg1);
//		request.getSession().getAttribute(arg0);
		
		
		int count = 5;
//
//		try {
//			start = Integer.parseInt(request.getParameter("start"));
//		} catch (NumberFormatException e) {
//			// 当浏览器没有传参数start时
//		}
//
		int next = start + count;
		int pre = start - count;

		int total = new ToThread().getTotal();
		
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

		List<Thread> threadsZD = new ToThread().list();
		
		List<Thread> threads = new ToThread().list(start, count);

		request.setAttribute("threads", threads);
		
		request.setAttribute("threadsZD", threadsZD);

		request.getRequestDispatcher("firstPage.jsp").forward(request, response);

	}

}


