package updateTo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Timestamp;

import entity.Thread;
import utils.DBhelper;

public class ToThread {
	public int getTotal() {
		int total = 0;
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select count(*) from Thread";

			ResultSet rs = s.executeQuery(sql);
			while (rs.next()) {
				total = rs.getInt(1);
			}

			System.out.println("total:" + total);

			DBhelper.closeConnection(c, s, rs);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return total;
	}

	public void add(Thread thread) {

		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "insert into Thread values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = c.prepareStatement(sql);
			
			ps.setInt(1, thread.getThreadID());
			ps.setString(2, thread.getThreadName());
			ps.setString(3, thread.getFromAccount());
			ps.setInt(4, thread.getNumCommit());
			ps.setInt(5, thread.getNumReading());
			ps.setTimestamp(6, thread.getPostTime());
			ps.setTimestamp(7, thread.getLastTime());
			ps.setInt(8, thread.getTopLabel());
			ps.setString(9, thread.getText());
			
			ps.execute();

			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				int ThreadID1 = rs.getInt(1);
				thread.setThreadID(ThreadID1);
			}

			DBhelper.closeConnection(c, ps, rs);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void update(Thread thread) {
		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "update Thread set threadname= ?,  fromaccount = ? , numcommit= ?, numreading= ?, posttime = ? , lastcommittime= ?, toplabel= ?, text=? where ThreadID = ?";
			
			PreparedStatement ps = c.prepareStatement(sql);
			ps.setString(1, thread.getThreadName());
			ps.setString(2, thread.getFromAccount());
			ps.setInt(3, thread.getNumCommit());
			ps.setInt(4, thread.getNumReading());
			ps.setTimestamp(5, thread.getPostTime());
			ps.setTimestamp(6, thread.getLastTime());
			ps.setInt(7,  thread.getTopLabel());
			ps.setString(8, thread.getText());
			ps.setInt(9, thread.getThreadID());

			ps.execute();

			DBhelper.closeConnection(c, ps, null);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void delete(int ThreadID) {
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "delete from Thread where ThreadID = '" + ThreadID + "'";

			s.execute(sql);

			DBhelper.closeConnection(c, s, null);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void resetNumReading(int ThreadID) {
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "update Thread set numreading=numreading+1 where ThreadID =" + ThreadID+";";

			s.execute(sql);

			DBhelper.closeConnection(c, s, null);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public Thread get(int id) {
		Thread thread = null;
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select * from Thread where ThreadID = " + id;

			ResultSet rs = s.executeQuery(sql);

			if (rs.next()) {
				thread = new Thread();
				String fromaccount=rs.getString("fromaccount");
				String text=rs.getString("text");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				thread.setThreadName(rs.getString("threadname"));
				thread.setNumCommit(rs.getInt("numcommit"));
				thread.setNumReading(rs.getInt("numreading"));
				thread.setLastTime(rs.getTimestamp("lastcommittime"));
				thread.setTopLabel(rs.getInt("toplabel"));
				thread.setFromAccount(fromaccount);
				thread.setPostTime(posttime);
				thread.setThreadID(threadID);
				thread.setText(text);
				
			}

			DBhelper.closeConnection(c, s, rs);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return thread;
	}
	public Thread getText(String str) {
		Thread thread = null;
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select * from Thread where text = "+"'"+str+"';";

			ResultSet rs = s.executeQuery(sql);

			if (rs.next()) {
				thread = new Thread();
				String fromaccount=rs.getString("fromaccount");
				String text=rs.getString("text");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				thread.setThreadName(rs.getString("threadname"));
				thread.setNumCommit(rs.getInt("numcommit"));
				thread.setNumReading(rs.getInt("numreading"));
				thread.setLastTime(rs.getTimestamp("lastcommittime"));
				thread.setTopLabel(rs.getInt("toplabel"));
				thread.setFromAccount(fromaccount);
				thread.setPostTime(posttime);
				thread.setThreadID(threadID);
				thread.setText(text);
				
			}

			DBhelper.closeConnection(c, s, rs);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return thread;
	}
	
	public List<Thread> getThreadByFromAccount(String account) {
		Thread thread = null;

		List<Thread> threads=new ArrayList<Thread>();
		
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select * from Thread where fromaccount = " + account;

			ResultSet rs = s.executeQuery(sql);
			if (rs.next()) {
				thread = new Thread();
				String fromaccount=rs.getString("fromaccount");
				String text=rs.getString("text");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				thread.setThreadName(rs.getString("threadname"));
				thread.setNumCommit(rs.getInt("numcommit"));
				thread.setNumReading(rs.getInt("numreading"));
				thread.setLastTime(rs.getTimestamp("lastcommittime"));
				thread.setTopLabel(rs.getInt("toplabel"));
				thread.setFromAccount(fromaccount);
				thread.setPostTime(posttime);
				thread.setThreadID(threadID);
				thread.setText(text);
				
				threads.add(thread);
				
			}

			DBhelper.closeConnection(c, s, rs);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return threads;
	}

	public List<Thread> list() {
		Thread thread = null;

		List<Thread> threads=new ArrayList<Thread>();
		
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select * from Thread where toplabel = 1";// OR threadname like '" + threadName+"%' OR threadname like '%" + threadName+"'";
				
			ResultSet rs = s.executeQuery(sql);
			
			while(rs.next()) {
				thread = new Thread();
				String fromaccount=rs.getString("fromaccount");
				String text=rs.getString("text");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				thread.setThreadName(rs.getString("threadname"));
				thread.setNumCommit(rs.getInt("numcommit"));
				thread.setNumReading(rs.getInt("numreading"));
				thread.setLastTime(rs.getTimestamp("lastcommittime"));
				thread.setTopLabel(rs.getInt("toplabel"));
				thread.setFromAccount(fromaccount);
				thread.setPostTime(posttime);
				thread.setThreadID(threadID);
				thread.setText(text);
				
				threads.add(thread);
				
			}

			DBhelper.closeConnection(c, s, rs);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return threads;
	}
	public List<Thread> list3(int start, int count) {
		List<Thread> Threads = new ArrayList<Thread>();

		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "select * from Thread where toplabel = 0 order by lastcommittime desc limit ?,? ";

			PreparedStatement ps = c.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, count);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Thread thread = new Thread();
				String fromaccount=rs.getString("fromaccount");
				String text=rs.getString("text");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				thread.setThreadName(rs.getString("threadname"));
				thread.setNumCommit(rs.getInt("numcommit"));
				thread.setNumReading(rs.getInt("numreading"));
				thread.setLastTime(rs.getTimestamp("lastcommittime"));
				thread.setTopLabel(rs.getInt("toplabel"));
				thread.setFromAccount(fromaccount);
				thread.setPostTime(posttime);
				thread.setThreadID(threadID);
				thread.setText(text);
				
				Threads.add(thread);
			}
			DBhelper.closeConnection(c, ps, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Threads;
	}
	public List<Thread> list(int start, int count) {
		List<Thread> Threads = new ArrayList<Thread>();

		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "select * from Thread order by lastcommittime desc limit ?,? ";

			PreparedStatement ps = c.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, count);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Thread thread = new Thread();
				String fromaccount=rs.getString("fromaccount");
				String text=rs.getString("text");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				thread.setThreadName(rs.getString("threadname"));
				thread.setNumCommit(rs.getInt("numcommit"));
				thread.setNumReading(rs.getInt("numreading"));
				thread.setLastTime(rs.getTimestamp("lastcommittime"));
				thread.setTopLabel(rs.getInt("toplabel"));
				thread.setFromAccount(fromaccount);
				thread.setPostTime(posttime);
				thread.setThreadID(threadID);
				thread.setText(text);
				
				Threads.add(thread);
			}
			DBhelper.closeConnection(c, ps, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Threads;
	}
	
	public List<Thread> list2(int start, int count,String threadName) {
		List<Thread> Threads = new ArrayList<Thread>();

		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "select * from Thread where threadname like '%" + threadName+"%'"+"order by lastcommittime desc limit ?,? ";

			PreparedStatement ps = c.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, count);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Thread thread = new Thread();
				String fromaccount=rs.getString("fromaccount");
				String text=rs.getString("text");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				thread.setThreadName(rs.getString("threadname"));
				thread.setNumCommit(rs.getInt("numcommit"));
				thread.setNumReading(rs.getInt("numreading"));
				thread.setLastTime(rs.getTimestamp("lastcommittime"));
				thread.setTopLabel(rs.getInt("toplabel"));
				thread.setFromAccount(fromaccount);
				thread.setPostTime(posttime);
				thread.setThreadID(threadID);
				thread.setText(text);
				
				Threads.add(thread);
			}
			DBhelper.closeConnection(c, ps, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Threads;
	}
	public List<Thread> list(int start, int count, String fromaccount) {
		List<Thread> Threads = new ArrayList<Thread>();

		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "select * from Thread where fromaccount= ? order by lastcommittime desc limit ?,? ";

			PreparedStatement ps = c.prepareStatement(sql);
			ps.setString(1, fromaccount);
			ps.setInt(2, start);
			ps.setInt(3, count);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Thread thread = new Thread();
				String text=rs.getString("text");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				thread.setThreadName(rs.getString("threadname"));
				thread.setNumCommit(rs.getInt("numcommit"));
				thread.setNumReading(rs.getInt("numreading"));
				thread.setLastTime(rs.getTimestamp("lastcommittime"));
				thread.setTopLabel(rs.getInt("toplabel"));
				thread.setFromAccount(fromaccount);
				thread.setPostTime(posttime);
				thread.setThreadID(threadID);
				thread.setText(text);
				
				Threads.add(thread);
			}
			DBhelper.closeConnection(c, ps, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Threads;
	}
	
	
	public List<Thread> searchThread(String threadName) {
		Thread thread = null;

		List<Thread> threads=new ArrayList<Thread>();
		
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select * from Thread where threadname like '%" + threadName+"%'";// OR threadname like '" + threadName+"%' OR threadname like '%" + threadName+"'";
				
			ResultSet rs = s.executeQuery(sql);
			
			while(rs.next()) {
				thread = new Thread();
				String fromaccount=rs.getString("fromaccount");
				String text=rs.getString("text");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				thread.setThreadName(rs.getString("threadname"));
				thread.setNumCommit(rs.getInt("numcommit"));
				thread.setNumReading(rs.getInt("numreading"));
				thread.setLastTime(rs.getTimestamp("lastcommittime"));
				thread.setTopLabel(rs.getInt("toplabel"));
				thread.setFromAccount(fromaccount);
				thread.setPostTime(posttime);
				thread.setThreadID(threadID);
				thread.setText(text);
				
				threads.add(thread);
				
			}

			DBhelper.closeConnection(c, s, rs);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return threads;
	}

}
