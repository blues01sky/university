package user.services;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import user.entity.User;

public interface UserService {
	
	List<User> queryAll();
	
	User findPassword(@Param("username") String username);
	
	User findUserById(@Param("id") Integer id);
	
	User findUserByUsername(@Param("username") String username);
	
	String deleteByUserName(@Param("username") String username);
	
	String deleteByUserId(@Param("id") Integer id);
	
	void tianjiaUser(User user);
	
	User chaByUsername(@Param("username") String username);
	
	String updateuserById(User user);
	
	String updateUserByUsername(User user);
	
	String reset(User user);
}
