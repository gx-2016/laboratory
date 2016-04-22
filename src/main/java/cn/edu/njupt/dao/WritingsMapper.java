package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.Writings;

public interface WritingsMapper {
    int deleteByPrimaryKey(Integer wtringsid);

    int insert(Writings record);

    int insertSelective(Writings record);

    Writings selectByPrimaryKey(Integer wtringsid);

    int updateByPrimaryKeySelective(Writings record);

    int updateByPrimaryKey(Writings record);
    
    List<Writings> queryAllWritings();
}