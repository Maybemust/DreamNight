/**
 * 
 */
package entity;


import java.sql.Timestamp;
/**
 * @author ¿Ó—Û
 *
 */
public class Commit {
	private String fromAccount;
	private Timestamp postTime;
	private String text;
	private int commitID;
	private int threadID;
	
	public Commit()
	{
		
	}
	
	public Commit(String fromAccount, Timestamp postTime, String text, int threadID) {
		super();
		this.fromAccount = fromAccount;
		this.postTime = postTime;
		this.text = text;
		this.threadID = threadID;
	}

	
	/**
	 * @param fromAccount
	 * @param postTime
	 * @param text
	 * @param commitID
	 * @param threadID
	 */
	public Commit(String fromAccount, Timestamp postTime, String text, int commitID, int threadID) {
		super();
		this.fromAccount = fromAccount;
		this.postTime = postTime;
		this.text = text;
		this.commitID = commitID;
		this.threadID = threadID;
	}
	/**
	 * @return the fromAccount
	 */
	public String getFromAccount() {
		return fromAccount;
	}
	/**
	 * @param fromAccount the fromAccount to set
	 */
	public void setFromAccount(String fromAccount) {
		this.fromAccount = fromAccount;
	}
	/**
	 * @return the postTime
	 */
	public Timestamp getPostTime() {
		return postTime;
	}
	/**
	 * @param postTime the postTime to set
	 */
	public void setPostTime(Timestamp postTime) {
		this.postTime = postTime;
	}
	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}
	/**
	 * @param text the text to set
	 */
	public void setText(String text) {
		this.text = text;
	}
	/**
	 * @return the commitID
	 */
	public int getCommitID() {
		return commitID;
	}
	/**
	 * @param commitID the commitID to set
	 */
	public void setCommitID(int commitID) {
		this.commitID = commitID;
	}
	/**
	 * @return the threadID
	 */
	public int getThreadID() {
		return threadID;
	}
	/**
	 * @param threadID the threadID to set
	 */
	public void setThreadID(int threadID) {
		this.threadID = threadID;
	}
	
	
	public String toString() {
		return "Commit [fromAccount=" + fromAccount + ", postTime=" + postTime + ", text=" + text + ", commitID="
				+ commitID + ", threadID=" + threadID + "]";
	}

	

}
