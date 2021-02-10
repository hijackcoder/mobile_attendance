package com.biotech.service;

import java.util.List;

import com.biotech.model.Biotech;
import com.biotech.model.User;



public interface UserService {
	public User login(String username,String password);
	public boolean reg(User user);
	public List<User> list();
	public String listjson();
	public void del(User user); 
	public User load(int userid);
	public void approve(User user);
	
}
