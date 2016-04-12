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
}