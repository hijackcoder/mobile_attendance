package com.biotech.impl;

import com.biotech.dao.AdminDAO;
import com.biotech.model.Admin;
import com.biotech.service.AdminService;



public class AdminServiceImpl implements AdminService {
	private AdminDAO admindao;
	@Override
	public boolean login(String username, String password) {
		// TODO Auto-generated method stub
		Admin admin = admindao.load(username, password);
		if(admin == null){
			return false;
		}else{
			return true;
		}
	}
	public AdminDAO getAdmindao() {
		return admindao;
	}
	public void setAdmindao(AdminDAO admindao) {
		this.admindao = admindao;
	}
	
	
}
