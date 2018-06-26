package com.share.auth;

import java.util.Date;
import java.util.Random;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class IDUtils {
	
	public static void main(String[] args) {
		System.out.println(saltAndMd5("1", "2"));
	}
	
	
	public static String createToken(){
		String[] vocabulary = {
				"A","B","C","D","E","F","G","H","I","J","K","L","M","N",
				"P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3",
				"4","5","6","7","8","9"
		};
		Random rand = new Random();
		StringBuilder s = new StringBuilder();
		for(int i = 0; i < 6; i++){
			s.append(vocabulary[rand.nextInt(vocabulary.length)]);
		}
		return s.toString();
	}
	
	//Spring的加密DigestUtils.md5DigestAsHex(password.getBytes())

	public static String saltAndMd5(String username, String password){
		//加密算法
		String algorithmName = "MD5";
		//原密码
		String source = password;
		//盐值（需要唯一，一般为用户ID）
		Object salt = ByteSource.Util.bytes(username);
		//加密次数
		int hashIterations = 10;
		SimpleHash hash = new SimpleHash(algorithmName, source, salt, hashIterations);
		return hash.toString();	//32位
	}
	
	/**
	 * 生成20位ID，理论上在同一时刻能生成的ID数为34^7=52523350144[5.2523350144E10]
	 * @param time
	 * @return
	 */
	public static String createID20(Date time){
		String[] vocabulary = {
				"A","B","C","D","E","F","G","H","I","J","K","L","M","N",
				"P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3",
				"4","5","6","7","8","9"
		};
		int n = vocabulary.length;
		Random rand = new Random();
		StringBuilder s = new StringBuilder();
		for(int i = 0; i < 7; i++){
			s.append(vocabulary[rand.nextInt(n)]);
		}
		String str = time.getTime() + s.toString();
		return str;
	}
}
