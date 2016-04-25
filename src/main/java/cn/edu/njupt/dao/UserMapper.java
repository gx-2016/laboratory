package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User user1);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User user);

	List<User> getNotdutyUser(String isduty);
	
	List<User> getIsdutyUser(String isduty);
	
	List<User> getAllUser();

	User findUserExist(String logonname);

	List<User> getUndergraduateUser(String education);

	List<User> getMasterUser(String education);

	List<User> getDoctorUser(String education);

	List<User> getTeachersByType(String type);



}