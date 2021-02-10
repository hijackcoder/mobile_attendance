package com.biotech.dao;


import java.util.List;

import com.biotech.model.Article;
import com.biotech.model.Course;
import com.biotech.model.Location;





public interface CourseDAO {

	public boolean save(Course course);
	public boolean save(Location location);
	
	public boolean del(Course course);
	public boolean delloc(Location location);
	public List<Course> list();
	public Course load(int id);
	
	public List<Course> list(String banji);
	public List<Location> list(int userid);
	public List<Location> listsign(int article_id);
}
