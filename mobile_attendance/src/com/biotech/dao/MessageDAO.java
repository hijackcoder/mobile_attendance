package com.biotech.dao;


import java.util.List;

import com.biotech.model.Message;





public interface MessageDAO {

	public boolean save(Message message);
	public boolean del(Message message);
	public List<Message> list(int userid);
}
