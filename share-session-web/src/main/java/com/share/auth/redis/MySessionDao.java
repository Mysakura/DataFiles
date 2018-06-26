package com.share.auth.redis;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.UnknownSessionException;
import org.apache.shiro.session.mgt.eis.AbstractSessionDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MySessionDao extends AbstractSessionDAO {

	@Autowired
	private RedisManager redisManager;
	
	@Override
	public void delete(Session session) {
		if(session == null || session.getId() == null){
			System.out.println("Session is null");
			return;
		}
		redisManager.hdelete(session.getId().toString());
	}

	@Override
	public Collection<Session> getActiveSessions() {
		List<Session> list = redisManager.hmget();
		return list;
	}

	@Override
	public void update(Session session) throws UnknownSessionException {
		if(session == null || session.getId() == null){
			System.out.println("Session is null");
			return;
		}
		Serializable sessionId = session.getId();
		redisManager.hadd(sessionId.toString(), session);
	}

	@Override
	protected Serializable doCreate(Session session) {
		Serializable sessionId = generateSessionId(session);
		assignSessionId(session, sessionId);
		//添加进redis
		redisManager.hadd(sessionId.toString(), session);
		
		return sessionId;
	}

	@Override
	protected Session doReadSession(Serializable sessionId) {
		return redisManager.hget(sessionId.toString());
	}

//	private byte[] sessionToByte(Session session){
//		Kryo kryo = new Kryo();
//		kryo.setRegistrationRequired(false);
//		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
//		Output output = new Output(outputStream);
//		kryo.writeObject(output, session);
//		output.flush();
//		output.close();
//		return outputStream.toByteArray();
//	}
//	
//	private Session byteToSession(byte[] bytes){
//		Kryo kryo = new Kryo();
//		kryo.setRegistrationRequired(false);
//		ByteArrayInputStream inputStream = new ByteArrayInputStream(bytes);
//		Input input = new Input(inputStream);
//		Session session = kryo.readObject(input, SimpleSession.class);
//		input.close();
//		return session;
//	}
	
}
