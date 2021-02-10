package com.biotech.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.biotech.dao.MessageDAO;
import com.biotech.model.Message;
import com.biotech.service.MessageService;

import net.sf.json.JSONArray;

public class MessageServiceImpl implements MessageService {
	private MessageDAO messagedao;

	@Override
	public boolean save(Message message) {
		// TODO Auto-generated method stub
		return messagedao.save(message);
	}

	@Override
	public boolean del(Message message) {
		// TODO Auto-generated method stub
		return messagedao.del(message);
	}

	@Override
	public String listjson(int userid) {
		// TODO Auto-generated method stub
		List<Message> list = messagedao.list(userid);
		

		JSONArray js = JSONArray.fromObject(list);

		return js.toString();
	}

	public MessageDAO getMessagedao() {
		return messagedao;
	}

	public void setMessagedao(MessageDAO messagedao) {
		this.messagedao = messagedao;
	}


}
