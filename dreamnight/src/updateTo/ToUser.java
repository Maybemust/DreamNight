/**
 * 
 */
package updateTo;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.User;
import utils.DBhelper;

/**
 * @author ¿Ó—Û
 *
 */
public class ToUser {
	public int getTotal() {
		int total = 0;
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select count(*) from User";

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

	public void add(User user) {

		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "insert into User values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = c.prepareStatement(sql);
			
			ps.setString(1, user.getAccount());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getNikeName());
			ps.setString(4, user.getSecurity());
			ps.setString(5, user.getAnswer());
			ps.setInt(6, user.getAuthority());
			ps.setBlob(7,user.getHead());
			ps.setString(8, user.getPersonality());
			
			ps.execute();

			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				String userID = rs.getString(1);
				user.setAccount(userID);
			}

			DBhelper.closeConnection(c, ps, rs);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void update(User user) {
		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "update User set password= ?, nikename = ? , security = ? , answer=? ,authority=?, head=?,personality=?  where account = ?";
			
			PreparedStatement ps = c.prepareStatement(sql);
			
			
			ps.setString(8, user.getAccount());
			ps.setString(1, user.getPassword());
			ps.setString(2, user.getNikeName());
			ps.setString(3, user.getSecurity());
			ps.setString(4, user.getAnswer());
			ps.setInt(5, user.getAuthority());
			ps.setBlob(6,user.getHead());
			ps.setString(7, user.getPersonality());

			ps.execute();

			DBhelper.closeConnection(c, ps, null);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void delete(String account) {
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "delete from User where userID = " + account;

			s.execute(sql);

			DBhelper.closeConnection(c, s, null);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public User get(String account) {
		User User = null;
		try {

			Connection c = DBhelper.getInstance().getConnection();

			Statement s = c.createStatement();

			String sql = "select * from User where userID = " + account;

			ResultSet rs = s.executeQuery(sql);

			if (rs.next()) {
				User user = new User();
				
				String password=rs.getString("password");
				String nikename=rs.getString("nikename");
				String security=rs.getString("security");
				String answer=rs.getString("answer");
				int authority=rs.getInt("authority");
				Blob head=rs.getBlob("head");
				String personality =rs.getString("personality");
				
				user.setAccount(account);
				user.setPassword(password);
				user.setAnswer(answer);
				user.setAuthority(authority);
				user.setHead(head);
				user.setNikeName(nikename);
				user.setSecurity(security);
				user.setPersonality(personality);
				
				
			}

			DBhelper.closeConnection(c, s, rs);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return User;
	}

	public List<User> list() {
		return list(0, Short.MAX_VALUE);
	}

	public List<User> list(int start, int count) {
		List<User> Users = new ArrayList<User>();

		try {

			Connection c = DBhelper.getInstance().getConnection();

			String sql = "select * from User order by account desc limit ?,? ";

			PreparedStatement ps = c.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, count);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();
				
				String account=rs.getString("account");
				String password=rs.getString("password");
				String nikename=rs.getString("nikename");
				String security=rs.getString("security");
				String answer=rs.getString("answer");
				int authority=rs.getInt("authority");
				Blob head=rs.getBlob("head");
				String personality =rs.getString("personality");
				
				user.setAccount(account);
				user.setPassword(password);
				user.setAnswer(answer);
				user.setAuthority(authority);
				user.setHead(head);
				user.setNikeName(nikename);
				user.setSecurity(security);
				user.setPersonality(personality);
				
				Users.add(user);
			}
			DBhelper.closeConnection(c, ps, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Users;
	}
}
