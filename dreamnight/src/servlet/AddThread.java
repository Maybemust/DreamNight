/**
 * 
 */
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
 * @author 李洋
 *
 */
public class AddThread extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		System.out.println("111111111111111111111111111");
		User USER=(User)request.getSession().getAttribute("USER");
		String threadname="新主题";
		String fromaccount=USER.getAccount();
		int numcommit=0;
		int numreading=0;
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp postTime=Timestamp.valueOf(sdf.format(new Date()));
		
		Timestamp lastTime=postTime;
		
		int toplabel=0;
		String text="...";
		System.out.println("222222222222222222222222");
		Thread newthread=new Thread(threadname,fromaccount,numcommit,numreading,postTime,lastTime,toplabel,text); 
		System.out.println("3333333333333333333333333333");
		ToThread to=new ToThread();
		System.out.println("444444444444444444444444444");
		to.add(newthread);
		System.out.println("55555555555555555555555");
		newthread=to.getText(text);
		System.out.println("666666666666666666666666");
		System.out.println(newthread.toString());
		System.out.println("7777777777777777777777777");
		String url="editTopic?threadID="+newthread.getThreadID()+"&fromPage=firstPage";
		System.out.println("8888888888888888888888888888");
		request.getRequestDispatcher(url).forward(request, response);

	}

}



