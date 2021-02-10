package com.biotech.dao;



import com.biotech.model.Admin;



public interface AdminDAO {

	public Admin load(String username,String password);
}
