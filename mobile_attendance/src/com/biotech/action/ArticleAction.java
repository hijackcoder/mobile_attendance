package com.biotech.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.biotech.model.Article;
import com.biotech.model.Message;
import com.biotech.model.User;
import com.biotech.service.ArticleService;
import com.biotech.service.MessageService;
import com.biotech.service.UserService;



public class ArticleAction extends BaseAction {
	private ArticleService articleservice;
	private UserService userservice;
	private Article article;
	private String jsonString;
	private int userid;
	private List<Article> list = new ArrayList<Article>();

	public String save() {
		
		article.setUpadtetime(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		User user = userservice.load(article.getUserid());
		article.setUsername(user.getRealname());
		boolean flag = articleservice.save(article);
		if (flag) {
			jsonString = "1";
		} else {
			jsonString = "0";
		}

		return SUCCESS;
	}

	public String add() {
		return SUCCESS;
	}
	public String delete() {
		articleservice.del(article);
		return SUCCESS;
	}

	public String list() {
		list = articleservice.list();
		return SUCCESS;
	}
	public String listjson() {
		jsonString = articleservice.listjson();
		return SUCCESS;
	}

	public ArticleService getArticleservice() {
		return articleservice;
	}

	public void setArticleservice(ArticleService articleservice) {
		this.articleservice = articleservice;
	}

	public UserService getUserservice() {
		return userservice;
	}

	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public String getJsonString() {
		return jsonString;
	}

	public void setJsonString(String jsonString) {
		this.jsonString = jsonString;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public List<Article> getList() {
		return list;
	}

	public void setList(List<Article> list) {
		this.list = list;
	}




}
