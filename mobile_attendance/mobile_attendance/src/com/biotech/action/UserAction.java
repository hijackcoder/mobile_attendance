package com.biotech.action;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONObject;

import com.biotech.model.User;
import com.biotech.service.UserService;


public class UserAction extends BaseAction {
	private UserService userservice;
	private User user;
	private String jsonString;
	private boolean flag;
	private String message;
	private List<User> lst = new ArrayList<User>();

	public String login() {

		user = userservice.login(user.getUsername(), user.getPassword());

		JSONObject jo = JSONObject.fromObject(user);

		jsonString = jo.toString();

		return SUCCESS;

	}

	public String reg() {

		flag = userservice.reg(user);

		if (flag) {
			jsonString = "1";
		} else {
			jsonString = "0";
		}

		return SUCCESS;

	}
	public String save() {
		
		 userservice.reg(user);
		

		
		return SUCCESS;
		
	}
	public String edit() {
	user = userservice.load(user.getId());
		
		
		
		return SUCCESS;
		
	}
	public String add() {
		
		return SUCCESS;
		
	}
	public String approve() {
		
		userservice.approve(user);
		
		
		return SUCCESS;
		
	}
	public String list() {
		
		lst =userservice.list();
		
		return SUCCESS;
		
	}
	public String listjson() {
		
		
		jsonString=userservice.listjson();
		
		return SUCCESS;
		
	}
	public String delete() {
		
		userservice.del(user);
		return SUCCESS;
		
		
	}

	public UserService getUserservice() {
		return userservice;
	}

	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getJsonString() {
		return jsonString;
	}

	public void setJsonString(String jsonString) {
		this.jsonString = jsonString;
	}

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public List<User> getLst() {
		return lst;
	}

	public void setLst(List<User> lst) {
		this.lst = lst;
	}
	

}
