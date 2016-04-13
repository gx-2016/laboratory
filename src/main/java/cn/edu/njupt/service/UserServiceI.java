package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.User;

public interface UserServiceI {

	public User getUserById(int userid);

	public List<User> getAllUser();

	public int updateUser(User user); 
	
	public int deleteUser(Integer userid);

	public User findUserExist(String logonname);

	public int addUser(User user1);
}
