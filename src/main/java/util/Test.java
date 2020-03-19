package util;

import org.springframework.beans.factory.annotation.Autowired;

import user.entity.User;
import user.services.UserService;

public class Test {
	
	@Autowired
	private UserService userService;
	
	@org.junit.Test
	public void name() {
		
		User user = new User();
		user.setUsername("123");
		user.setPassword("1234");
		user.setScore("650");
		user.setProvince("河南");
		user.setDepartment("理科");
		user.setTelphone("110");
		
		System.out.println(user);
		
		
		System.out.println(user);
	}
}
