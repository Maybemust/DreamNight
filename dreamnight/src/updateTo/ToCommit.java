/**
 * 
 */
package updateTo;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Timestamp;

import entity.Commit;
import utils.DBhelper;

/**
 * @author ¿Ó—Û
 *
 */
public class ToCommit {
	public int getTotal(int s1) {
		int total = 0;
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select count(*) from Commit where threadID = "+String.valueOf(s1);

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

	public int getTotal() {
		int total = 0;
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select count(*) from Commit";

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
	
	


	public void add(Commit commit) {

		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "insert into Commit( fromaccount,posttime,text,threadID) values(?,?,?,?)";
			PreparedStatement ps = c.prepareStatement(sql);
			ps.setString(1, commit.getFromAccount());
			ps.setTimestamp(2, commit.getPostTime());
			ps.setString(3, commit.getText());
			
			ps.setInt(4, commit.getThreadID());
			
			ps.execute();

			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				int commitID = rs.getInt(4);
				commit.setCommitID(commitID);
			}

			DBhelper.closeConnection(c, ps, rs);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	public void update(Commit commit) {
		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "update Commit set threadID= ?, fromaccount = ? , posttime = ? , text=? where CommitID = ?";
			
			PreparedStatement ps = c.prepareStatement(sql);
			ps.setString(2, commit.getFromAccount());
			ps.setTimestamp(3, commit.getPostTime());
			ps.setString(4, commit.getText());
			ps.setInt(1, commit.getCommitID());
			ps.setInt(5, commit.getThreadID());

			ps.execute();

			DBhelper.closeConnection(c, ps, null);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void delete(int commitID) {
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "delete from Commit where commitID = " + commitID;

			s.execute(sql);

			DBhelper.closeConnection(c, s, null);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int resetCommitNum(int threadID) {
		int commitNum = 0;
		try {
			
			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select count(*) from commit where threadID = "+ threadID+";";
			s.execute(sql);



			
			ResultSet rs = s.executeQuery(sql);
			while (rs.next()) {
				commitNum = rs.getInt(1);
			}

			String sql1 = "update Thread set numcommit="+commitNum+" where ThreadID =" + threadID+";";

			s.execute(sql1);
			
			DBhelper.closeConnection(c, s, null);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return commitNum;
	}
	
	public void resetCommitNum(int threadID,int commitNum) {
		try {
			
			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql1 = "update Thread set numcommit="+commitNum+" where ThreadID =" + threadID+";";

			s.execute(sql1);
			
			DBhelper.closeConnection(c, s, null);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public Commit get(int id) {
		Commit Commit = null;
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select * from Commit where commitID = " + id;

			ResultSet rs = s.executeQuery(sql);

			if (rs.next()) {
				Commit commit = new Commit();
				String fromaccount=rs.getString("fromaccount");
				String text=rs.getString("text");
				int commitID=rs.getInt("commitID");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				commit.setCommitID(commitID);
				commit.setFromAccount(fromaccount);
				commit.setPostTime(posttime);
				commit.setThreadID(threadID);
				commit.setText(text);
				
			}

			DBhelper.closeConnection(c, s, rs);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return Commit;
	}

	public List<Commit> list() {
		return list(0, Short.MAX_VALUE);
	}
	public List<Commit> list(int start, int count, int s1) {
		List<Commit> Commits = new ArrayList<Commit>();

		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "select * from Commit where threadID="+s1+" order by commitID desc limit ?,? ";

			PreparedStatement ps = c.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, count);

			ResultSet rs = ps.executeQuery();
			
			System.out.println("+++++++++++++++++++++++++++++++++"+start);

			while (rs.next()) {
				Commit commit = new Commit();
				String fromaccount=rs.getString("fromaccount");
				String text=rs.getString("text");
				int commitID=rs.getInt("commitID");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				commit.setCommitID(commitID);
				commit.setFromAccount(fromaccount);
				commit.setPostTime(posttime);
				commit.setThreadID(threadID);
				commit.setText(text);
				Commits.add(commit);
				
				System.out.println(commit.toString());

			}
			DBhelper.closeConnection(c, ps, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Commits;
	}
	public List<Commit> list(int start, int count) {
		List<Commit> Commits = new ArrayList<Commit>();

		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "select * from Commit order by commitID desc limit ?,? ";

			PreparedStatement ps = c.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, count);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Commit commit = new Commit();
				String fromaccount=rs.getString("fromaccount");
				String text=rs.getString("text");
				int commitID=rs.getInt("commitID");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				commit.setCommitID(commitID);
				commit.setFromAccount(fromaccount);
				commit.setPostTime(posttime);
				commit.setThreadID(threadID);
				commit.setText(text);
				Commits.add(commit);
			}
			DBhelper.closeConnection(c, ps, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Commits;
	}
	
	public List<Commit> list(int start, int count,String fromaccount) {
		List<Commit> Commits = new ArrayList<Commit>();

		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "select * from Commit where fromaccount=? order by commitID desc limit ?,? ";

			PreparedStatement ps = c.prepareStatement(sql);
			ps.setString(1, fromaccount);
			ps.setInt(2, start);
			ps.setInt(3, count);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Commit commit = new Commit();
				String text=rs.getString("text");
				int commitID=rs.getInt("commitID");
				int threadID =rs.getInt("threadID");
				Timestamp posttime=rs.getTimestamp("posttime");
				
				commit.setCommitID(commitID);
				commit.setFromAccount(fromaccount);
				commit.setPostTime(posttime);
				commit.setThreadID(threadID);
				commit.setText(text);
				Commits.add(commit);
			}
			DBhelper.closeConnection(c, ps, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Commits;
	}
	
	
	

}
