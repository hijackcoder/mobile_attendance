package com.biotech.dao.impl;

import java.util.List;

import com.biotech.dao.AdminDAO;
import com.biotech.dao.UserDAO;
import com.biotech.model.Admin;
import com.biotech.model.User;

public class UserDaoImpl extends BaseDAO implements UserDAO {


	@Override
	public User login(String username, String password) {
		StringBuffer sb = new StringBuffer("FROM User WHERE username = '")
		.append(username).append("' and password = '").append(password).append("'");
		
		List<User> lst = findByHQL(sb.toString());
		if(lst.size()>0){
			return lst.get(0);
		}else{
			return null;
		}
	}

	@Override
	public boolean reg(User user) {
		// TODO Auto-generated method stub
		return this.saveOrUpdate(user);
	}

	@Override
	public List<User> list() {
		StringBuffer sb = new StringBuffer("FROM User");
		
		List<User> lst = findByHQL(sb.toString());
		
		return lst;
	}

	@Override
	public boolean del(User user) {
		// TODO Auto-generated method stub
		return deleteById(User.class, user.getId());
	}

	@Override
	public User load(int id) {
		// TODO Auto-generated method stub
		return get(User.class, id);
	}

	@Override
	public void approve(User user) {
		// TODO Auto-generated method stub
		try {
			this.executeHql("Update User set jobstatus = 1 where id = "+user.getId());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
