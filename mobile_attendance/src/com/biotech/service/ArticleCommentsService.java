package com.biotech.service;

import com.biotech.model.ArticleComments;








public interface ArticleCommentsService {
	
	public boolean save(ArticleComments comments);
	public boolean del(ArticleComments comments);
	public String listjson(int artid);
	

}
