package com.biotech.impl;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

import com.biotech.dao.CommentsDAO;
import com.biotech.dao.UserDAO;
import com.biotech.model.Comments;
import com.biotech.model.User;
import com.biotech.service.CommentsService;


public class CommentsServiceImpl implements CommentsService {
	private CommentsDAO commentsdao;
	private UserDAO userdao;

	@Override
	public boolean save(Comments comments) {
		// TODO Auto-generated method stub
		return commentsdao.save(comments);
	}

	@Override
	public boolean del(Comments comments) {
		// TODO Auto-generated method stub
		return commentsdao.del(comments);
	}

	@Override
	public List<Comments> list() {
		// TODO Auto-generated method stub
		List<Comments> list2= new ArrayList<Comments>();
		List<Comments> list = commentsdao.list();
		
		for(Comments c :list){
			User user = userdao.load(c.getUserid());
			c.setUsername(user.getUsername());
			list2.add(c);
		}
		return list2;
	}

	@Override
	public String listbybiotech(int luxianid) {
		// TODO Auto-generated method stub
		List<Comments> list2= new ArrayList<Comments>();
		List<Comments> list = commentsdao.listbyluxian(luxianid);
		
		for(Comments c :list){
			User user = userdao.load(c.getUserid());
			c.setUsername(user.getUsername());
			list2.add(c);
		}
		
		
		
		JSONArray js = JSONArray.fromObject(list2);
		
		return js.toString();
	}

	public CommentsDAO getCommentsdao() {
		return commentsdao;
	}

	public void setCommentsdao(CommentsDAO commentsdao) {
		this.commentsdao = commentsdao;
	}

	public UserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}
	
	

}
