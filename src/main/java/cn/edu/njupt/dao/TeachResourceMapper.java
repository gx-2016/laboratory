package cn.edu.njupt.dao;

import cn.edu.njupt.model.TeachResource;

public interface TeachResourceMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(TeachResource record);

    int insertSelective(TeachResource record);

    TeachResource selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(TeachResource record);

    int updateByPrimaryKey(TeachResource record);
}