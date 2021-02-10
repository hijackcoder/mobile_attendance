package com.biotech.dao;


import java.util.List;

import com.biotech.model.Article;





public interface ArticleDAO {

	public boolean save(Article article);
	public boolean del(Article article);
	public List<Article> list();
	public List<Article> listall();
}
