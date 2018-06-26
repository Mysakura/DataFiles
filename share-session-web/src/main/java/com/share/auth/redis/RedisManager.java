package com.share.auth.redis;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

@Component
public class RedisManager {

	@Autowired
	private RedisTemplate<String, Session> redisTemplate;
	
	private static final String KEY = "ShareSession";
	
	public void hadd(String sessionId, Session session){
		redisTemplate.boundHashOps(KEY).put(sessionId, session);
	}
	
	public void hdelete(String sessionId){
		redisTemplate.boundHashOps(KEY).delete(sessionId);
	}
	
	public Session hget(String sessionId){
		return (Session) redisTemplate.boundHashOps(KEY).get(sessionId);
	}
	
	public List<Session> hmget(){
		List<Session> list = new ArrayList<>();
		
		List<Object> values = redisTemplate.boundHashOps(KEY).values();
		for (Object object : values) {
			list.add((Session) object);
		}
		return list;
	}
}
