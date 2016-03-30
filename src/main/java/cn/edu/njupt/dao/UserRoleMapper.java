package cn.edu.njupt.dao;

import cn.edu.njupt.model.UserRole;

public interface UserRoleMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(UserRole record);

    int updateByPrimaryKey(UserRole record);
}