package cn.edu.njupt.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.njupt.dao.PersonPageMapper;
import cn.edu.njupt.dao.UserMapper;
import cn.edu.njupt.model.PersonPageWithBLOBs;
import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.model.User;
import cn.edu.njupt.service.UserServiceI;
import cn.edu.njupt.util.ReflectClazz;

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
		return userMapper.getAllUser();
	}

    
	@Override
	public List<User> getUndergraduateUser() {
		return userMapper.getUndergraduateUser();
	}


	@Override
	public List<User> getMasterUser() {
		return userMapper.getMasterUser();
	}


	@Override
	public List<User> getDoctorUser() {
		return userMapper.getDoctorUser();
	}


	/*
	 * 根据用户id获取个人主页相关信息
	 */
	@Override
	public PersonPageWithBLOBs getPersonalPageByUserId(Integer userid) {
		return personPageMapper.getPersonalPageByUserId(userid);
	}

	/*
	 *  根据用户类型 获取老师主页相关信息
	 */
	@Override
	public List<User> getUsersByType(String type) {
		return userMapper.getUsersByType(type);
	}
	
	/*
	 *  根据用户学历和用户类型  获取学生主页相关信息
	 */
	@Override
	public List<User> getStudentsByType(String type, String education) {
		HashMap<String,String> map = new HashMap<String,String> ();
		map.put("type", type);
		map.put("education", education);
		return userMapper.getStudentsByType(map);
	}


	/* 
	 * 保存个人主页信息
	 */
	@Transactional(readOnly=false,isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED)
	@Override
	public void savePersonPage(User user, String[] area) {
		PersonPageWithBLOBs bloBs = new PersonPageWithBLOBs();
		//一些基本信息
		bloBs.setEducation(user.getEducation());
		bloBs.setUserid(user.getUserid());
		bloBs.setEmail(user.getEmail());
		//数据项信息
		int index = 1;
		for (String string : area) {
			System.out.println("area:  "+string);
			ReflectClazz.setFieldValue(bloBs, "field_"+ index++, string.trim());
		}
		personPageMapper.insertSelective(bloBs);
		
	}


	/* 
	 * 更新个人主页信息
	 */
	@Transactional(readOnly=false,isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED)
	@Override
	public void updatePersonPage(User user, String[] area) {
		PersonPageWithBLOBs bloBs = this.getPersonalPageByUserId(user.getUserid());
		//数据项信息
		int index = 1;
		for (String string : area) {
			System.out.println("area:  "+string);
			ReflectClazz.setFieldValue(bloBs, "field_"+ index++, string.trim());
		}
		personPageMapper.updateByPrimaryKeySelective(bloBs);
	}


	/* 
	 * 获取老师个人主页信息
	 */
	@Override
	public HashMap<String, HashMap<String, Object>> getUsersPersonpageMap(
			List<User> users, List<SystemDDL> personpageSystemDDLs) {
		    //封装每个老师的数据项map,key为 userid value是一个数据项map
		    HashMap<String, HashMap<String, Object>> userPersonpageMap;
		    //封装一个老师的数据项map,key为 ddlname value是一个数据项数据项内容
			HashMap<String, Object> map;
			userPersonpageMap = new HashMap<String,  HashMap<String,Object>>();
			for (User user : users) {
				PersonPageWithBLOBs teacherPersonpage = this.getPersonalPageByUserId(user.getUserid());
			    if(null != teacherPersonpage ){
				   map = new HashMap<String, Object>();
					for (SystemDDL systemDDL2 : personpageSystemDDLs) {
					     Object object = ReflectClazz.getFieldValue(teacherPersonpage, "field_"+systemDDL2.getDdlcode());
						if(null != object){
							map.put(systemDDL2.getDdlname(),object) ;
						}
					}
					userPersonpageMap.put(user.getUserid().toString(), map);
			   }
			}
			return userPersonpageMap;
		
	}


}
