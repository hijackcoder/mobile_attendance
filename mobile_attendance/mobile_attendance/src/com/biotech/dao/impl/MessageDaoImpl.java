package com.biotech.dao.impl;

import java.util.List;

import com.biotech.dao.MessageDAO;
import com.biotech.model.Message;


public class MessageDaoImpl extends BaseDAO implements MessageDAO {

	@Override
	public boolean save(Message message) {
		return saveOrUpdate(message);
	}

	@Override
	public boolean del(Message message) {
		// TODO Auto-generated method stub
		return deleteById(Message.class, message.getId());
	}

	@Override
	public List<Message> list(int userid) {
		StringBuffer sb = new StringBuffer();
		sb = new StringBuffer("FROM Message where userid = "+userid);

		List<Message> lst = findByHQL(sb.toString());
		return lst;
	}


}
