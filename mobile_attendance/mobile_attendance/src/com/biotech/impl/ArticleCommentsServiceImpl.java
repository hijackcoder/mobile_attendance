package com.biotech.impl;

import java.util.List;

import com.biotech.dao.ArticleCommentsDAO;
import com.biotech.model.ArticleComments;
import com.biotech.service.ArticleCommentsService;

import net.sf.json.JSONArray;

public class ArticleCommentsServiceImpl implements ArticleCommentsService {
	private ArticleCommentsDAO articlecommentsdao;

	@Override
	public boolean save(ArticleComments comments) {
		// TODO Auto-generated method stub
		return articlecommentsdao.save(comments);
	}

	@Override
	public boolean del(ArticleComments comments) {
		// TODO Auto-generated method stub
		return articlecommentsdao.del(comments);
	}

	@Override
	public String listjson(int artid) {
		// TODO Auto-generated method stub
		List<ArticleComments> list = articlecommentsdao.list(artid);
		

		JSONArray js = JSONArray.fromObject(list);

		return js.toString();
	}

	public ArticleCommentsDAO getArticlecommentsdao() {
		return articlecommentsdao;
	}

	public void setArticlecommentsdao(ArticleCommentsDAO articlecommentsdao) {
		this.articlecommentsdao = articlecommentsdao;
	}




}
