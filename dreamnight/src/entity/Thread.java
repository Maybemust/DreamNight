/**
 * 
 */
package entity;

import java.sql.Timestamp;

/**
 * @author ¿Ó—Û
 *
 */
public class Thread {
	private String threadName;
	private String fromAccount;
	private int numCommit;
	private int numReading;
	private Timestamp postTime;
	private Timestamp lastTime;
	private int threadID;
	private int topLabel;
	private String text;
	
	
	public Thread()
	{
		
	}
	/**
	 * @param threadName
	 * @param fromAccount
	 * @param numCommit
	 * @param numReading
	 * @param postTime
	 * @param lastTime
	 * @param threadID
	 * @param topLabel
	 * @param text
	 */
	public Thread(String threadName, String fromAccount, int numCommit, int numReading, Timestamp postTime,
			Timestamp lastTime, int threadID, int topLabel, String text) {
		super();
		this.threadName = threadName;
		this.fromAccount = fromAccount;
		this.numCommit = numCommit;
		this.numReading = numReading;
		this.postTime = postTime;
		this.lastTime = lastTime;
		this.threadID = threadID;
		this.topLabel = topLabel;
		this.text = text;
	}
	/**
	 * @return the threadName
	 */
	public String getThreadName() {
		return threadName;
	}
	/**
	 * @param threadName the threadName to set
	 */
	public void setThreadName(String threadName) {
		this.threadName = threadName;
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
	 * @return the numCommit
	 */
	public int getNumCommit() {
		return numCommit;
	}
	/**
	 * @param numCommit the numCommit to set
	 */
	public void setNumCommit(int numCommit) {
		this.numCommit = numCommit;
	}
	/**
	 * @return the numReading
	 */
	public int getNumReading() {
		return numReading;
	}
	/**
	 * @param numReading the numReading to set
	 */
	public void setNumReading(int numReading) {
		this.numReading = numReading;
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
	 * @return the lastTime
	 */
	public Timestamp getLastTime() {
		return lastTime;
	}
	/**
	 * @param lastTime the lastTime to set
	 */
	public void setLastTime(Timestamp lastTime) {
		this.lastTime = lastTime;
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
	/**
	 * @return the topLabel
	 */
	public int getTopLabel() {
		return topLabel;
	}
	/**
	 * @param topLabel the topLabel to set
	 */
	public void setTopLabel(int topLabel) {
		this.topLabel = topLabel;
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
	
	
	
	
}
