package com.biotech.model;

public class User {
	private int id;
	private String username;
	private String password;
	private String qqnum;
	private String phone;
	private String realname;
	private int jobstatus;//0学生，1 任课教师，2系管理员、3学院管理员和4教务处管理员

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQqnum() {
		return qqnum;
	}

	public void setQqnum(String qqnum) {
		this.qqnum = qqnum;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public int getJobstatus() {
		return jobstatus;
	}

	public void setJobstatus(int jobstatus) {
		this.jobstatus = jobstatus;
	}

	

}
