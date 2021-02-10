package com.biotech.dao.impl;

import java.util.List;

import com.biotech.dao.ArticleCommentsDAO;
import com.biotech.model.ArticleComments;



public class ArticleCommentsDaoImpl extends BaseDAO implements ArticleCommentsDAO {

	@Override
	public boolean save(ArticleComments comments) {
		return saveOrUpdate(comments);
	}

	@Override
	public boolean del(ArticleComments comments) {
		// TODO Auto-generated method stub
		return deleteById(ArticleComments.class, comments.getId());
	}

	@Override
	public List<ArticleComments> list(int articleid) {
		StringBuffer sb = new StringBuffer();
		sb = new StringBuffer("FROM ArticleComments where artid = ").append(articleid);

		List<ArticleComments> lst = findByHQL(sb.toString());
		return lst;
	}


}
