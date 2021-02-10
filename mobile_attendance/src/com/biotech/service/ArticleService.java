package com.biotech.service;

import java.util.List;

import com.biotech.model.Article;
import com.biotech.model.Message;







public interface ArticleService {
	
	public boolean save(Article article);
	public boolean del(Article article);
	public String listjson();
	public List<Article> list();
	

}
