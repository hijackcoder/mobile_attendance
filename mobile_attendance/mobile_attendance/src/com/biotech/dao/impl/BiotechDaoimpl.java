package com.biotech.dao.impl;

import java.util.List;


import com.biotech.dao.BiotechDAO;
import com.biotech.model.Biotech;

public class BiotechDaoimpl extends BaseDAO implements BiotechDAO {

	@Override
	public boolean save(Biotech biotech) {
		// TODO Auto-generated method stub
		return saveOrUpdate(biotech);
	}

	@Override
	public boolean del(Biotech biotech) {
		this.delete(biotech);
		return true;
	}

	@Override
	public Biotech load(int id) {
		StringBuffer sb = new StringBuffer("FROM Biotech WHERE id = ")
		.append(id);
		
		List<Biotech> lst = findByHQL(sb.toString());
		if(lst.size()>0){
			return lst.get(0);
		}else{
			return null;
		}
	}

	@Override
	public boolean update(Biotech biotech) {
		// TODO Auto-generated method stub
		return saveOrUpdate(biotech);
	}

	@Override
	public List<Biotech> list(String name) {
		// TODO Auto-generated method stub
		StringBuffer sb;
		if(name !=null && !name.equals("")){
			 sb = new StringBuffer("FROM Biotech WHERE name like '%")
			.append(name).append("%'");
		}else{
			 sb = new StringBuffer("FROM Biotech");
		}
		
		List<Biotech> lst = findByHQL(sb.toString());
		 return lst;
	}

	@Override
	public List<Biotech> list0() {
		StringBuffer sb;
		sb = new StringBuffer("FROM Biotech where type = '").append("课程介绍").append("'");
		List<Biotech> lst = findByHQL(sb.toString());
		 return lst;
	}

	@Override
	public List<Biotech> list1() {
		StringBuffer sb;
		sb = new StringBuffer("FROM Biotech where type = '").append("通知公告").append("'");
		List<Biotech> lst = findByHQL(sb.toString());
		 return lst;
	}

	@Override
	public List<Biotech> list2() {
		StringBuffer sb;
		sb = new StringBuffer("FROM Biotech where type = '").append("食堂信息").append("'");
		List<Biotech> lst = findByHQL(sb.toString());
		 return lst;
	}

	@Override
	public List<Biotech> list3() {
		StringBuffer sb;
		sb = new StringBuffer("FROM Biotech where type = '").append("小卖部信息").append("'");
		List<Biotech> lst = findByHQL(sb.toString());
		 return lst;
	}

	@Override
	public List<Biotech> list4() {
		StringBuffer sb;
		sb = new StringBuffer("FROM Biotech where type = '").append("失物招领").append("'");
		List<Biotech> lst = findByHQL(sb.toString());
		 return lst;
	}

	

}
