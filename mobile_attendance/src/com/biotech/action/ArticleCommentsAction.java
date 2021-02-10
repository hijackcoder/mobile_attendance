package com.biotech.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.biotech.model.Article;
import com.biotech.model.ArticleComments;
import com.biotech.model.Message;
import com.biotech.model.User;
import com.biotech.service.ArticleCommentsService;
import com.biotech.service.ArticleService;
import com.biotech.service.MessageService;
import com.biotech.service.UserService;



public class ArticleCommentsAction extends BaseAction {
	private ArticleCommentsService articlecommentsservice;
	private UserService userservice;
	private ArticleComments comments;
	private String jsonString;
	private int userid;
	private int artid;
	private List<ArticleComments> list = new ArrayList<ArticleComments>();

	public String save() {
		
		comments.setCommitdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		User user = userservice.load(comments.getUserid());
		comments.setUsername(user.getRealname());
		boolean flag = articlecommentsservice.save(comments);
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

	public String listjson() {
		jsonString = articlecommentsservice.listjson(artid);
		return SUCCESS;
	}

	public ArticleCommentsService getArticlecommentsservice() {
		return articlecommentsservice;
	}

	public void setArticlecommentsservice(
			ArticleCommentsService articlecommentsservice) {
		this.articlecommentsservice = articlecommentsservice;
	}

	public UserService getUserservice() {
		return userservice;
	}

	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}

	public ArticleComments getComments() {
		return comments;
	}

	public void setComments(ArticleComments comments) {
		this.comments = comments;
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

	public int getArtid() {
		return artid;
	}

	public void setArtid(int artid) {
		this.artid = artid;
	}

	public List<ArticleComments> getList() {
		return list;
	}

	public void setList(List<ArticleComments> list) {
		this.list = list;
	}



}
