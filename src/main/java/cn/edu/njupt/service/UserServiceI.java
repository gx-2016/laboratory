package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.PersonPageWithBLOBs;
import cn.edu.njupt.model.User;

public interface UserServiceI {

	public User getUserById(int userid);

	public List<User> getNotdutyUser(String isduty);

	public List<User> getIsdutyUser(String isduty);

	public int updateUser(User user); 
	
	public int deleteUser(Integer userid);

	public User findUserExist(String logonname);

	public int addUser(User user1);

	//后台获取成员信息
	public List<User> getAllUser();

	public List<User> getUndergraduateUser(String education);

	public List<User> getMasterUser(String education);

	public List<User> getDoctorUser(String education);
	
	List<User> getTeachersByType(String type);

	public List<PersonPageWithBLOBs> getPersonalPage(Integer userid);


}
