package entity;

import java.sql.Blob;

public class User {
	private String account;
	private String password;
	private String nikeName;
	private String security;
	private String answer;
	private int authority;
	private Blob head;
	private String personality;
	
	
	public User()
	{
		
	}

	/**
	 * @param account
	 * @param password
	 * @param nikeName
	 * @param security
	 * @param answer
	 * @param authority
	 */
	public User(String account, String password, String nikeName, String security, String answer, int authority,Blob head,String personality) {
		super();
		this.account = account;
		this.password = password;
		this.nikeName = nikeName;
		this.security = security;
		this.answer = answer;
		this.authority = authority;
		this.personality = personality;
		this.head=head;
	}
	
	public User(String account, String password, String nikeName, String security, String answer) {
		super();
		this.account = account;
		this.password = password;
		this.nikeName = nikeName;
		this.security = security;
		this.answer = answer;
	}

	/**
	 * @return the account
	 */
	public String getAccount() {
		return account;
	}

	/**
	 * @param account the account to set
	 */
	public void setAccount(String account) {
		this.account = account;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the nikeName
	 */
	public String getNikeName() {
		return nikeName;
	}

	/**
	 * @param nikeName the nikeName to set
	 */
	public void setNikeName(String nikeName) {
		this.nikeName = nikeName;
	}

	/**
	 * @return the security
	 */
	public String getSecurity() {
		return security;
	}

	/**
	 * @param security the security to set
	 */
	public void setSecurity(String security) {
		this.security = security;
	}

	/**
	 * @return the answer
	 */
	public String getAnswer() {
		return answer;
	}

	/**
	 * @param answer the answer to set
	 */
	public void setAnswer(String answer) {
		this.answer = answer;
	}

	/**
	 * @return the authority
	 */
	public int getAuthority() {
		return authority;
	}

	/**
	 * @param authority the authority to set
	 */
	public void setAuthority(int authority) {
		this.authority = authority;
	}
	
	public String getPersonality(){
		return personality;
	}
	
	public void setPersonality(String personality){
		this.personality = personality;
	}

	/**
	 * @return the head
	 */
	public Blob getHead() {
		return head;
	}

	/**
	 * @param head the head to set
	 */
	public void setHead(Blob head) {
		this.head = head;
	}
	
	
}
