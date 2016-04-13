package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.UserRole;

public interface UserRoleMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(UserRole record);

    int updateByPrimaryKey(UserRole record);

	/**
	 * @Description: TODO
	 * @Parameter: @param roleid
	 * @Parameter: @return
	 * @Return:List<UserRole>
	 * @Author: 高翔
	 * @Date: 2016年4月10日
	 */
	List<UserRole> findUserRoleByRoleId(String roleid);

	/**
	 * @Description: TODO
	 * @Parameter: @param roleid
	 * @Parameter: @return
	 * @Return:int
	 * @Author: 高翔
	 * @Date: 2016年4月12日
	 */
	int deleteByRoleid(String roleid);

	/**
	 * @Description: TODO
	 * @Parameter: @param list
	 * @Parameter: @return
	 * @Return:Object
	 * @Author: 高翔
	 * @Date: 2016年4月12日
	 */
     int insertUserRole(List<UserRole> list);

	/**
	 * @Description: TODO
	 * @Parameter: @param userid
	 * @Parameter: @return
	 * @Return:List<UserRole>
	 * @Author: 高翔
	 * @Date: 2016年4月13日
	 */
	List<UserRole> findUserRoleByUserId(Integer userid);
}