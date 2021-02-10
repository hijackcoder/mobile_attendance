package com.biotech.action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.biotech.model.Article;
import com.biotech.model.Course;
import com.biotech.model.Location;
import com.biotech.model.Message;
import com.biotech.model.User;
import com.biotech.service.ArticleService;
import com.biotech.service.CourseService;
import com.biotech.service.MessageService;
import com.biotech.service.UserService;

import freemarker.template.SimpleDate;

public class CourseAction extends BaseAction {
	private CourseService courseservice;
	private Course course;
	private Location location;
	private String jsonString;
	private int userid;
	private String banji;
	private List<Course> list = new ArrayList<Course>();
	private List<Location> listloc= new ArrayList<Location>();
	private  int articleid;

	public String save() {

		courseservice.save(course);

		return SUCCESS;
	}
	public String saveloc() throws UnsupportedEncodingException {
		String course = URLDecoder.decode(location.getLession(), "utf-8");
		String room = URLDecoder.decode(location.getRoom(), "utf-8");
		location.setLession(course);
		location.setRoom(room);
		location.setLoctime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		boolean flag = courseservice.save(location);
		if(flag){
			jsonString="1";
		}else{
			jsonString="0";
		}
		
		return SUCCESS;
	}

	public String add() {
		return SUCCESS;
	}

	public String edit() {
		course = courseservice.load(course.getId());
		return SUCCESS;
	}

	public String del() {
		courseservice.del(course);
		return SUCCESS;
	}
	public String delloc() {
		courseservice.delloc(location);
		return SUCCESS;
	}

	public String list() {
		list = courseservice.list();
		return SUCCESS;
	}
	public String listloc() {
		listloc = courseservice.listbyarticleid(articleid);
		return SUCCESS;
	}

	public String listjson() {
		jsonString = courseservice.listjson(banji);
		return SUCCESS;
	}
	public String listlocjson() {
		jsonString = courseservice.listlocjson(userid);
		return SUCCESS;
	}

	public CourseService getCourseservice() {
		return courseservice;
	}

	public void setCourseservice(CourseService courseservice) {
		this.courseservice = courseservice;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public String getJsonString() {
		return jsonString;
	}

	public void setJsonString(String jsonString) {
		this.jsonString = jsonString;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getBanji() {
		return banji;
	}

	public void setBanji(String banji) {
		this.banji = banji;
	}

	public List<Course> getList() {
		return list;
	}

	public void setList(List<Course> list) {
		this.list = list;
	}
	public Location getLocation() {
		return location;
	}
	public void setLocation(Location location) {
		this.location = location;
	}
	public List<Location> getListloc() {
		return listloc;
	}
	public void setListloc(List<Location> listloc) {
		this.listloc = listloc;
	}
	public int getArticleid() {
		return articleid;
	}
	public void setArticleid(int articleid) {
		this.articleid = articleid;
	}
	

}
