package com.biotech.dao;


import java.util.List;

import com.biotech.model.Biotech;




public interface BiotechDAO {

	public boolean save(Biotech biotech);
	public boolean del(Biotech biotech);
	public Biotech load(int id);
	public boolean update(Biotech biotech);
	public List<Biotech> list(String name);
	public List<Biotech> list0();
	public List<Biotech> list1();
	public List<Biotech> list2();
	public List<Biotech> list3();
	public List<Biotech> list4();
}
