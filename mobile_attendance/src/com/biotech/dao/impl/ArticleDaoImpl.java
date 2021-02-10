package com.biotech.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.biotech.dao.ArticleDAO;
import com.biotech.model.Article;



public class ArticleDaoImpl extends BaseDAO implements ArticleDAO {

	@Override
	public boolean save(Article article) {
		return saveOrUpdate(article);
	}

	@Override
	public boolean del(Article article) {
		// TODO Auto-generated method stub
		return deleteById(Article.class, article.getId());
	}

	@Override
	public List<Article> list() {
		StringBuffer sb = new StringBuffer();
		String nowdate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		sb = new StringBuffer("FROM Article where upadtetime='").append(nowdate).append("'");

		List<Article> lst = findByHQL(sb.toString());
		return lst;
	}

	@Override
	public List<Article> listall() {
		StringBuffer sb = new StringBuffer();
		sb = new StringBuffer("FROM Article ");

		List<Article> lst = findByHQL(sb.toString());
		return lst;
	}


}
