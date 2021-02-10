package com.biotech.dao;


import java.util.List;

import com.biotech.model.Article;
import com.biotech.model.ArticleComments;





public interface ArticleCommentsDAO {

	public boolean save(ArticleComments comments);
	public boolean del(ArticleComments comments);
	public List<ArticleComments> list(int articleid);
}
