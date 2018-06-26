package com.share.auth;

import java.util.HashSet;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import com.share.entity.User;

public class PermissionRealm extends AuthorizingRealm {

	//@Autowired
	//private UserService userService;
	
	//Authorization-授权 [ɔːθəraɪ'zeɪʃ(ə)n]
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
//		Object principal = principals.getPrimaryPrincipal();
//		User user = (User) principal;
		
		Set<String> roles = new HashSet<>();
		// 授权角色
		roles.add("user");
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
		return info;
	}

	//Authentication-认证 [ɔː,θentɪ'keɪʃən]
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) {
		
		UsernamePasswordToken uToken = (UsernamePasswordToken) token;
		
		String username = uToken.getUsername();
		String password = String.valueOf(uToken.getPassword());
		
		//User user = userService.getUserForLogin(username, IDUtils.saltAndMd5(username, password));
		User user = new User(username, IDUtils.saltAndMd5(username, password));
		
		//认证的实体信息
		Object principal = user;
		//从数据库获取的密码
		Object hashedCredentials = user.getPassword();
		//盐值
		ByteSource credentialsSalt = ByteSource.Util.bytes(user.getUserName());
		//当前Realm对象的name，调用父类的getName方法
		String realmName = getName();
		
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(principal, hashedCredentials, credentialsSalt, realmName);
		
		return info;
	}
}
