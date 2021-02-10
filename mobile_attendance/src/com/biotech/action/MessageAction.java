package com.biotech.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.biotech.model.Message;
import com.biotech.model.User;
import com.biotech.service.MessageService;
import com.biotech.service.UserService;



public class MessageAction extends BaseAction {
	private MessageService messageservice;
	private UserService userservice;
	private Message message;
	private String jsonString;
	private int userid;
	private List<Message> list = new ArrayList<Message>();

	public String save() {
		
		message.setUptimestr(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		User user = userservice.load(message.getSrcuserid());
		message.setSrcname(user.getRealname());
		boolean flag = messageservice.save(message);
		if (flag) {
			jsonString = "1";
		} else {
			jsonString = "0";
		}

		return SUCCESS;
	}

	public String add() {
		return SUCCESS;
	}

	public String listjson() {
		jsonString = messageservice.listjson(userid);
		return SUCCESS;
	}

	public String delete() {
		messageservice.del(message);
		return SUCCESS;
	}

	public String getJsonString() {
		return jsonString;
	}

	public void setJsonString(String jsonString) {
		this.jsonString = jsonString;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}



	public List<Message> getList() {
		return list;
	}

	public void setList(List<Message> list) {
		this.list = list;
	}

	public MessageService getMessageservice() {
		return messageservice;
	}

	public void setMessageservice(MessageService messageservice) {
		this.messageservice = messageservice;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public UserService getUserservice() {
		return userservice;
	}

	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}


}
