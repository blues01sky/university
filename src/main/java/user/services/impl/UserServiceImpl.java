package user.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.entity.User;
import user.mapper.UserMapper;
import user.services.UserService;
import util.DateUtil;

@Service("userService")
public class UserServiceImpl implements UserService {

	DateUtil date = new DateUtil();
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<User> queryAll() {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查看所有用户的方法"+"------------------");
		return userMapper.queryAll();
	}

	@Override
	public User findByPassword(String username) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过查找密码信息的的方法"+"------------------");
		return userMapper.findByPassword(username);
	}

	@Override
	public User findUserById(Integer id) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过id查找用户信息的方法"+"------------------");
		return userMapper.findUserById(id);
	}

	@Override
	public User findUserByUsername(String username) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过用户名查找用户信息的方法"+"------------------");
		return userMapper.findByUsername(username);
	}

	@Override
	public String deleteByUserName(String username) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过用户名删除一个用户的方法"+"------------------");
		return userMapper.deleteByUserName(username);
	}

	@Override
	public String deleteByUserId(Integer id) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过id删除一个用户的方法"+"------------------");
		return userMapper.deleteByUserId(id);
	}

	@Override
	public void updateuserById(User user) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过id更新用户信息的方法"+"------------------");
		userMapper.updateuserById(user);
	}

	@Override
	public void updateUserByUsername(User user) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过用户名更新用户信息的方法"+"------------------");
		userMapper.updateUserByUsername(user);
	}

	@Override
	public void reset(User user) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了重置密码的方法"+"------------------");
		userMapper.reset(user);
	}

	@Override
	public void tianjiaUser(User user) {
		// TODO Auto-generated method stub
		
		 userMapper.tianjiaUser(user);
	}

	@Override
	public User chaByUsername(String username) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过用户名查找用户信息的方法"+"------------------");
		return userMapper.chaByUsername(username);
	}
	
}
