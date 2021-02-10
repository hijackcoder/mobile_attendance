package com.biotech.impl;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.biotech.dao.BiotechDAO;
import com.biotech.model.Biotech;
import com.biotech.service.BiotechService;


public class BiotechServiceImpl implements BiotechService {
	private BiotechDAO biotechdao;

	@Override
	public String detail(int goodsId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean save(Biotech biotech) {
		// TODO Auto-generated method stub
		biotech.setPubdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		return biotechdao.save(biotech);
	}



	@Override
	public List<Biotech> search(String name) {
		// TODO Auto-generated method stub
		return biotechdao.list(name);
	}

	@Override
	public Biotech load(int goodsId) {
		// TODO Auto-generated method stub
		return biotechdao.load(goodsId);
	}

	@Override
	public void del(Biotech jingdian) {
		// TODO Auto-generated method stub
		biotechdao.del(jingdian);
	}

	@Override
	public String loadAllJson() {
		List<Biotech> list = biotechdao.list(null);
		if(list.size()>0){
			JSONArray jsonarr = JSONArray.fromObject(list);
			return jsonarr.toString();
		}else{
			return null;
		}
	}

	@Override
	public String detailjson(String id) {
		// TODO Auto-generated method stub
		Integer goodid= Integer.parseInt(id);
		Biotech good = this.load(goodid);
		if(good != null){
			JSONObject obj = JSONObject.fromObject(good);
			return obj.toString();
		}else{
			return null;
		}
		
	}

	@Override
	public String loadAllJson2(String keyword) {
		List<Biotech> list = biotechdao.list(keyword);
		if(list.size()>0){
			JSONArray jsonarr = JSONArray.fromObject(list);
			return jsonarr.toString();
		}else{
			return null;
		}
	}


	@Override
	public List<Biotech> listbiotech() {
		// TODO Auto-generated method stub
		return biotechdao.list(null);
	}

	public BiotechDAO getBiotechdao() {
		return biotechdao;
	}

	public void setBiotechdao(BiotechDAO biotechdao) {
		this.biotechdao = biotechdao;
	}

	@Override
	public String loadAllJson0() {
		List<Biotech> list = biotechdao.list0();
		if(list.size()>0){
			JSONArray jsonarr = JSONArray.fromObject(list);
			return jsonarr.toString();
		}else{
			return null;
		}
	}

	@Override
	public String loadAllJson1() {
		List<Biotech> list = biotechdao.list1();
		if(list.size()>0){
			JSONArray jsonarr = JSONArray.fromObject(list);
			return jsonarr.toString();
		}else{
			return null;
		}
	}

	@Override
	public String loadAllJson2() {
		List<Biotech> list = biotechdao.list2();
		if(list.size()>0){
			JSONArray jsonarr = JSONArray.fromObject(list);
			return jsonarr.toString();
		}else{
			return null;
		}
	}

	@Override
	public String loadAllJson3() {
		List<Biotech> list = biotechdao.list3();
		if(list.size()>0){
			JSONArray jsonarr = JSONArray.fromObject(list);
			return jsonarr.toString();
		}else{
			return null;
		}
	}

	@Override
	public String loadAllJson4() {
		List<Biotech> list = biotechdao.list4();
		if(list.size()>0){
			JSONArray jsonarr = JSONArray.fromObject(list);
			return jsonarr.toString();
		}else{
			return null;
		}
	}


}
