package com.biotech.model;

import java.util.Date;

public class Message {
	private int id;
	private String name;
	private int userid;
	private String uptimestr;
	private int srcuserid;
	private String  srcname;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getUptimestr() {
		return uptimestr;
	}

	public void setUptimestr(String uptimestr) {
		this.uptimestr = uptimestr;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getSrcuserid() {
		return srcuserid;
	}

	public void setSrcuserid(int srcuserid) {
		this.srcuserid = srcuserid;
	}

	public String getSrcname() {
		return srcname;
	}

	public void setSrcname(String srcname) {
		this.srcname = srcname;
	}


}
