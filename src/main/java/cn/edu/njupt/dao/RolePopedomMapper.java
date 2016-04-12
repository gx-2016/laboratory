package cn.edu.njupt.dao;

import cn.edu.njupt.model.RolePopedom;

public interface RolePopedomMapper {
    int deleteByPrimaryKey(Integer roleid);

    int insert(RolePopedom record);

    int insertSelective(RolePopedom record);

    RolePopedom selectByPrimaryKey(String roleid);

    int updateByPrimaryKeySelective(RolePopedom record);

    int updateByPrimaryKey(RolePopedom record);
}