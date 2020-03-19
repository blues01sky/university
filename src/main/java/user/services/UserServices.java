package user.services;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import user.entity.User;

public interface UserServices {
	
	List<User> queryAll();
	
	User findPassword(@Param("username") String username);
	
	User findUserById(@Param("id") Integer id);
	
	User findUserByUsername(@Param("username") String username);
	
	String deleteByUserName(@Param("username") String username);
	
	String deleteByUserId(@Param("id") Integer id);
	
	String addUser(@Param("user") User user);
	
	String updateuserById(@Param("user") User user);
	
	String updateUserByUsername(@Param("user") User user);
	
	String reset(@Param("user") User user);
}
