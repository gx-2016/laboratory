package cn.edu.njupt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.njupt.dao.UserMapper;
import cn.edu.njupt.model.User;
import cn.edu.njupt.service.UserServiceI;

@Service("userService")
public class UserServiceImpl implements UserServiceI{

	@Resource(name = "userMapper")
	private UserMapper userMapper;
	

	@Override
	public User getUserById(int userid) {
		return userMapper.selectByPrimaryKey(userid);
	}


	/* 
	 * 查询所有用户
	 */
	@Override
	public List<User> getAllUser() {
		return userMapper.getAllUser();
	}

}
