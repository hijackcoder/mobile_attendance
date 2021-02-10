package com.biotech.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.biotech.model.Biotech;
import com.biotech.service.BiotechService;
import com.biotech.util.CreateId;
import com.biotech.util.Utils;


public class BiotechAction extends BaseAction{
	private BiotechService bioservice;
	private Biotech biotech;
	private String jsonString;
	private String id;
	private List<Biotech> list = new ArrayList<Biotech>();
	private String keyword;
	
	
	
	public String save(){
		String realpath = ServletActionContext.getServletContext().getRealPath(
		"/upload");

		File file_= new File(realpath);
		if (!file_.exists()) {
			file_.mkdirs();
		}
		String filename = biotech.getFileFileName();
		String extention = Utils.getExtensionName(filename);
		filename = CreateId.getId()+"."+extention;
//		jingdian.setImage_url(filename);

		try {
			FileUtils.copyFile(biotech.getFile(), new File(file_, filename));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		biotech.setImage_url("upload" + "\\" + filename);
		
		bioservice.save(biotech);
		
		return SUCCESS;
	}
	
	public String list(){
		if(biotech == null){
			list = bioservice.search(null);
		}else{
			list = bioservice.search(biotech.getTitle());
		}
		
		return SUCCESS;
	}

	
	public String add(){
		return SUCCESS;
	}
	
	
	public String listjson(){
			jsonString=bioservice.loadAllJson();
		
	return SUCCESS;
}
	public String listjson0(){
		jsonString=bioservice.loadAllJson0();
		
		return SUCCESS;
	}
	public String listjson1(){
		jsonString=bioservice.loadAllJson1();
		
		return SUCCESS;
	}
	public String listjson2(){
		jsonString=bioservice.loadAllJson2();
		
		return SUCCESS;
	}
	public String listjson3(){
		jsonString=bioservice.loadAllJson3();
		
		return SUCCESS;
	}
	public String listjson4(){
		jsonString=bioservice.loadAllJson4();
		
		return SUCCESS;
	}
	
	public String detailjson(){
		jsonString=bioservice.detailjson(id);
	return SUCCESS;
}
	
	public String delete(){
		bioservice.del(biotech);
		return SUCCESS;
	}
	public String edit(){
		biotech = bioservice.load(biotech.getId());
		return SUCCESS;
	}




	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}






	public Biotech getXianlu() {
		return biotech;
	}

	public void setXianlu(Biotech biotech) {
		this.biotech = biotech;
	}


	public Biotech getJingdian() {
		return biotech;
	}

	public void setJingdian(Biotech jingdian) {
		this.biotech = jingdian;
	}





	public String getJsonString() {
		return jsonString;
	}

	public void setJsonString(String jsonString) {
		this.jsonString = jsonString;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public List<Biotech> getList() {
		return list;
	}

	public void setList(List<Biotech> list) {
		this.list = list;
	}

	public BiotechService getBioservice() {
		return bioservice;
	}

	public void setBioservice(BiotechService bioservice) {
		this.bioservice = bioservice;
	}

	public Biotech getBiotech() {
		return biotech;
	}

	public void setBiotech(Biotech biotech) {
		this.biotech = biotech;
	}




	
	
	

}
