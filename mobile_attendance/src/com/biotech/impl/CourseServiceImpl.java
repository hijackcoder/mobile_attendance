package com.biotech.impl;

import java.util.List;

import com.biotech.dao.ArticleDAO;
import com.biotech.dao.CourseDAO;
import com.biotech.model.Article;
import com.biotech.model.Course;
import com.biotech.model.Location;
import com.biotech.service.ArticleService;
import com.biotech.service.CourseService;

import net.sf.json.JSONArray;

public class CourseServiceImpl implements CourseService {
	private CourseDAO coursedao;

	@Override
	public boolean save(Course course) {
		// TODO Auto-generated method stub
		return coursedao.save(course);
	}

	@Override
	public boolean del(Course course) {
		// TODO Auto-generated method stub
		return coursedao.del(course);
	}

	@Override
	public String listjson(String banji) {
		// TODO Auto-generated method stub
		List<Course> list = coursedao.list(banji);

		JSONArray js = JSONArray.fromObject(list);

		return js.toString();
	}

	public CourseDAO getCoursedao() {
		return coursedao;
	}

	public void setCoursedao(CourseDAO coursedao) {
		this.coursedao = coursedao;
	}

	@Override
	public List<Course> list() {
		List<Course> list = coursedao.list();
		return list;
	}

	@Override
	public Course load(int id) {
		// TODO Auto-generated method stub
		return coursedao.load(id);
	}

	@Override
	public boolean save(Location location) {
		// TODO Auto-generated method stub
		return coursedao.save(location);
	}

	@Override
	public String listlocjson(int userid) {
		List<Location> list = coursedao.list(userid);

		JSONArray js = JSONArray.fromObject(list);

		return js.toString();
	}

	@Override
	public List<Location> listbyarticleid(int articleid) {
		// TODO Auto-generated method stub
		return coursedao.listsign(articleid);
	}

	@Override
	public boolean delloc(Location location) {
		// TODO Auto-generated method stub
		return coursedao.delloc(location);
	}

}
