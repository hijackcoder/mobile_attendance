package com.biotech.service;

import java.util.List;

import com.biotech.model.Article;
import com.biotech.model.Course;
import com.biotech.model.Location;
import com.biotech.model.Message;







public interface CourseService {
	
	public boolean save(Course course);
	public boolean save(Location location);
	
	public boolean del(Course course);
	public boolean delloc(Location location);
	public String listjson(String banji);
	public String listlocjson(int userid);
	
	public List<Course> list();
	public List<Location> listbyarticleid(int articleid);
	public Course load(int id) ;
	

}
