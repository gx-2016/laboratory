package cn.edu.njupt.dao;

import java.util.HashMap;
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

	List<User> getUndergraduateUser();

	List<User> getMasterUser();

	List<User> getDoctorUser();

	List<User> getUsersByType(String type);

	List<User> getStudentsByType(HashMap<String, String> map);




}