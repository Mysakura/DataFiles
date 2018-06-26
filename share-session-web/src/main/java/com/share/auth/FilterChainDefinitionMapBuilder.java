package com.share.auth;

import java.util.LinkedHashMap;

public class FilterChainDefinitionMapBuilder {

	public LinkedHashMap<String, String> build(){
		LinkedHashMap<String, String> map = new LinkedHashMap<>();
		
		// 静态资源
		map.put("/css/**", "anon");
		map.put("/js/**", "anon");
		map.put("/images/**", "anon");
		
		// 公共路径
		map.put("/index", "anon");		// 测试
		map.put("/welcome", "anon");		// 测试
		map.put("/home", "authc");		// 认证通过才能访问
 		
		// 登出,项目中没有/user/logout路径,因为shiro是过滤器,而SpringMVC是Servlet,Shiro会先执行
		map.put("/logout", "logout");
		
		// 通过记住我，可以访问的页面
		//map.put("/user/home", "user");
		
		// 授权
		map.put("/user/**", "authc,roles[user]");
		map.put("/admin/**", "authc,roles[admin]");
		
		// everything else requires authentication:
		map.put("/**", "authc");
		
		
		
		return map;
	}
}
