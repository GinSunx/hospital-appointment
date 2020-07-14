package cn.wcteam.entity;

public class CommonUser {
	private int userId;
	private String userName;
	private String userPsw;
	private String userIdent;
	private String userSex;
	private String userEmail;
	private String userTel;
	private String regTime;
	private int credit;

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	private int level;

	@Override
	public String toString() {
		return "CommonUser{" +
				"userId=" + userId +
				", userName='" + userName + '\'' +
				", userPsw='" + userPsw + '\'' +
				", userIdent='" + userIdent + '\'' +
				", userSex='" + userSex + '\'' +
				", userEmail='" + userEmail + '\'' +
				", userTel='" + userTel + '\'' +
				", regTime='" + regTime + '\'' +
				", credit=" + credit +
				'}';
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPsw() {
		return userPsw;
	}

	public void setUserPsw(String userPsw) {
		this.userPsw = userPsw;
	}

	public String getUserIdent() {
		return userIdent;
	}

	public void setUserIdent(String userIdent) {
		this.userIdent = userIdent;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserTel() {
		return userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public String getRegTime() {
		return regTime;
	}

	public void setRegTime(String regTime) {
		this.regTime = regTime;
	}

	public int getCredit() {
		return credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}
}
