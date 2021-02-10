package com.biotech.service;

import java.util.List;

import com.biotech.model.Biotech;





public interface BiotechService {
	
	public boolean save(Biotech biotech);
	public void del(Biotech biotech);
	public String list();
	public List<Biotech> listbiotech();
	public String detail(int id);
	public Biotech load(int id);
	public List<Biotech> search(String name);
	public String loadAllJson();
	public String loadAllJson0();
	public String loadAllJson1();
	public String loadAllJson2();
	public String loadAllJson3();
	public String loadAllJson4();
	public String loadAllJson2(String name);
	public String detailjson(String id);;
	

}
