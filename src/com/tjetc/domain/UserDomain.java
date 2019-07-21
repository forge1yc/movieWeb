package com.tjetc.domain;

public class UserDomain {
	private int userId;
	private String userName;
	private String userNickName;
	private String userPassword;
	private String userEmail;
	private String userPhone;
	private int userAge;
	private String userSex;
	private String userAddress;
	private String userHeadUrl;

	// constructor


	@Override
	public String toString() {
		return "UserInfoVo [userId=" + userId + ", userName=" + userName + ", userNickName=" + userNickName
				+ ", userPassword=" + userPassword + ", userEmail=" + userEmail + ", userPhone=" + userPhone
				+ ", userAge=" + userAge + ", userSex=" + userSex + ", userAddress=" + userAddress + ", userHeadUrl="
				+ userHeadUrl + "]";
	}

	//无参构造方法
	public UserDomain() {
		super();
		// TODO Auto-generated constructor stub
	}

	//构造方法
	public UserDomain(int userId, String userName, String userNickName, String userPassword, String userEmail,
			String userPhone, int userAge, String userSex, String userAddress, String userHeadUrl) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userNickName = userNickName;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userAge = userAge;
		this.userSex = userSex;
		this.userAddress = userAddress;
		this.userHeadUrl = userHeadUrl;
	}

	// 方法初始化
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

	public String getUserNickName() {
		return userNickName;
	}

	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public int getUserAge() {
		return userAge;
	}

	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserHeadUrl() {
		return userHeadUrl;
	}

	public void setUserHeadUrl(String userHeadUrl) {
		this.userHeadUrl = userHeadUrl;
	}

}
