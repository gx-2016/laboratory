package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User user);

	List<User> getAllUser();


}