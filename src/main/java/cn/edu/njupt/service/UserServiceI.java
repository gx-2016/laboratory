package cn.edu.njupt.service;

import java.util.HashMap;
import java.util.List;

import cn.edu.njupt.model.PersonPageWithBLOBs;
import cn.edu.njupt.model.SystemDDL;
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

	public List<User> getUndergraduateUser();

	public List<User> getMasterUser();

	public List<User> getDoctorUser();
	
	public PersonPageWithBLOBs getPersonalPageByUserId(Integer userid);
	
	public List<User> getUsersByType(String type);

	public List<User> getStudentsByType(String string, String education);

	/**
	 * @Description: TODO
	 * @Parameter: @param user
	 * @Parameter: @param area
	 * @Return:void
	 * @Author: 高翔
	 * @Date: 2016年5月18日
	 */
	public void savePersonPage(User user, String[] area);

	/**
	 * @Description: TODO
	 * @Parameter: @param user
	 * @Parameter: @param area
	 * @Return:void
	 * @Author: 高翔
	 * @Date: 2016年5月18日
	 */
	public void updatePersonPage(User user, String[] area);

	/**
	 * @Description: TODO
	 * @Parameter: @param teachers
	 * @Parameter: @param personpageSystemDDLs
	 * @Parameter: @return
	 * @Return:HashMap<String,HashMap<String,Object>>
	 * @Author: 高翔
	 * @Date: 2016年5月18日
	 */
	public HashMap<String, HashMap<String, Object>> getUsersPersonpageMap(
			List<User> users, List<SystemDDL> personpageSystemDDLs);


}
