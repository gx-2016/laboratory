package cn.edu.njupt.dao;

import cn.edu.njupt.model.Text;

public interface TextMapper {
    int deleteByPrimaryKey(Integer testid);

    int insert(Text record);

    int insertSelective(Text record);

    Text selectByPrimaryKey(Integer testid);

    int updateByPrimaryKeySelective(Text record);

    int updateByPrimaryKey(Text record);
}