package com.biotech.dao;



import java.util.List;

import com.biotech.model.Admin;
import com.biotech.model.User;




public interface UserDAO {

	public User login(String username,String password);
	public User load(int id);
	public boolean reg(User user);
	public void approve(User user);
	public boolean del(User user);
	public List<User> list();
}
