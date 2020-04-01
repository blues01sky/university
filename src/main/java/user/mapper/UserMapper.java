package user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import user.entity.User;

public interface UserMapper {
	
	List<User> queryAll();
	
	User findByPassword(@Param("username") String username);
	
	User findUserById(@Param("id") Integer id);
	
	User findByUsername(@Param("username") String username);
	
	void deleteByUserName(@Param("username") String username);
	
	void deleteByUserId(@Param("id") Integer id);
	
	void tianjiaUser(User user);
	
	void updateuserById(User user);
	
	void updateUserByUsername(User user);
	
	void reset(User user);
	
	User chaByUsername(@Param("username") String username);
	
}
