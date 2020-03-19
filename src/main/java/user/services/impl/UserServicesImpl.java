package user.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.entity.User;
import user.mapper.UserMapper;
import user.services.UserServices;
import util.DateUtil;

@Service("userService")
public class UserServicesImpl implements UserServices {

	private DateUtil date;
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<User> queryAll() {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查看所有用户的方法"+"------------------");
		return userMapper.queryAll();
	}

	@Override
	public User findPassword(String username) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过查找密码信息的的方法"+"------------------");
		return userMapper.findPassword(username);
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
		return userMapper.findUserByUsername(username);
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
	public String addUser(User user) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了增加一个用户的方法"+"------------------");
		return userMapper.addUser(user);
	}

	@Override
	public String updateuserById(User user) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过id更新用户信息的方法"+"------------------");
		return userMapper.updateuserById(user);
	}

	@Override
	public String updateUserByUsername(User user) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过用户名更新用户信息的方法"+"------------------");
		return userMapper.updateUserByUsername(user);
	}

	@Override
	public String reset(User user) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了重置密码的方法"+"------------------");
		return userMapper.reset(user);
	}
}
