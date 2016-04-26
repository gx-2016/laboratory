package cn.edu.njupt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.njupt.dao.PersonPageMapper;
import cn.edu.njupt.dao.UserMapper;
import cn.edu.njupt.model.PersonPageWithBLOBs;
import cn.edu.njupt.model.User;
import cn.edu.njupt.service.UserServiceI;

@Service("userService")
public class UserServiceImpl implements UserServiceI{

	@Resource(name = "userMapper")
	private UserMapper userMapper;
	
	@Resource(name = "personPageMapper")
	private PersonPageMapper personPageMapper;
	

	@Override
	public User getUserById(int userid) {
		return userMapper.selectByPrimaryKey(userid);
	}


	/* 
	 * 查询所有未毕业学生
	 */
	@Override
	public List<User> getNotdutyUser(String isduty) {
		return userMapper.getNotdutyUser(isduty);
	}


	/*
	 * 查询所有已毕业学生
	 */
	@Override
	public List<User> getIsdutyUser(String isduty) {
		
		return userMapper.getIsdutyUser(isduty);
	}
	
	@Override
	public int updateUser(User user) {
		// TODO 自动生成的方法存根
		return userMapper.updateByPrimaryKeySelective(user);
	}

    
	/**
	 * 后台删除成员
	 */
	@Override
	public int deleteUser(Integer userid) {
		// TODO 自动生成的方法存根
		return userMapper.deleteByPrimaryKey(userid);
	}


	
	 /**
     * 验证登录名是否存在,根据登录名查询用户
     */
	@Override
	public User findUserExist(String logonname) {
		return userMapper.findUserExist(logonname);
	}


	@Override
	public int addUser(User user1) {
		return userMapper.insertSelective(user1);
	}


    //后台获取成员信息
	@Override
	public List<User> getAllUser() {
		// TODO 自动生成的方法存根
		return userMapper.getAllUser();
	}

    
	@Override
	public List<User> getUndergraduateUser(String education) {
		return userMapper.getUndergraduateUser(education);
	}


	@Override
	public List<User> getMasterUser(String education) {
		return userMapper.getMasterUser(education);
	}


	@Override
	public List<User> getDoctorUser(String education) {
		return userMapper.getDoctorUser(education);
	}

    //获取个人主页信息
	public List<PersonPageWithBLOBs> getPersonalPage(Integer userid) {
		return personPageMapper.getPersonalPage(userid);
	}


}
