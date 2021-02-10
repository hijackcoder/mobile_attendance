package com.biotech.dao.impl;

import java.util.List;

import com.biotech.dao.ArticleDAO;
import com.biotech.dao.CourseDAO;
import com.biotech.model.Article;
import com.biotech.model.Course;
import com.biotech.model.Location;

public class CourseDaoImpl extends BaseDAO implements CourseDAO {

	@Override
	public boolean save(Course course) {
		return saveOrUpdate(course);
	}

	@Override
	public boolean del(Course course) {
		// TODO Auto-generated method stub
		return deleteById(Course.class, course.getId());
	}

	@Override
	public List<Course> list() {
		StringBuffer sb = new StringBuffer();
		sb = new StringBuffer("FROM Course ");

		List<Course> lst = findByHQL(sb.toString());
		return lst;
	}

	@Override
	public List<Course> list(String banji) {
		StringBuffer sb = new StringBuffer();
		sb = new StringBuffer("FROM Course where banji ='").append(banji)
				.append("'");

		List<Course> lst = findByHQL(sb.toString());
		return lst;
	}

	@Override
	public Course load(int id) {
		// TODO Auto-generated method stub
		return get(Course.class, id);
	}

	@Override
	public boolean save(Location location) {
		return saveOrUpdate(location);
	}

	@Override
	public List<Location> list(int userid) {
		StringBuffer sb = new StringBuffer();
		sb = new StringBuffer("FROM Location where userid =").append(userid);

		List<Location> lst = findByHQL(sb.toString());
		return lst;
	}

	@Override
	public List<Location> listsign(int article_id) {
		StringBuffer sb = new StringBuffer();
		sb = new StringBuffer("FROM Location where articleid =").append(article_id);

		List<Location> lst = findByHQL(sb.toString());
		return lst;
	}

	@Override
	public boolean delloc(Location location) {
		// TODO Auto-generated method stub
		return deleteById(Location.class, location.getId());
	}

}
