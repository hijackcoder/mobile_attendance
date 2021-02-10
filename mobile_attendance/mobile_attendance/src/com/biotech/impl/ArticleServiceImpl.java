package com.biotech.impl;

import java.util.List;

import com.biotech.dao.ArticleDAO;
import com.biotech.model.Article;
import com.biotech.service.ArticleService;

import net.sf.json.JSONArray;

public class ArticleServiceImpl implements ArticleService {
	private ArticleDAO articledao;

	@Override
	public boolean save(Article article) {
		// TODO Auto-generated method stub
		return articledao.save(article);
	}

	@Override
	public boolean del(Article article) {
		// TODO Auto-generated method stub
		return articledao.del(article);
	}

	@Override
	public String listjson() {
		// TODO Auto-generated method stub
		List<Article> list = articledao.list();
		

		JSONArray js = JSONArray.fromObject(list);

		return js.toString();
	}

	public ArticleDAO getArticledao() {
		return articledao;
	}

	public void setArticledao(ArticleDAO articledao) {
		this.articledao = articledao;
	}

	@Override
	public List<Article> list() {
		// TODO Auto-generated method stub
		return articledao.listall();
	}



}
