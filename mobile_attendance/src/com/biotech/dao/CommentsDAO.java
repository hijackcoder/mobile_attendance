package com.biotech.dao;


import java.util.List;

import com.biotech.model.Comments;




public interface CommentsDAO {

	public boolean save(Comments comments);
	public boolean del(Comments comments);
	public List<Comments> list();
	public List<Comments> listbyluxian(int bioid);
}
