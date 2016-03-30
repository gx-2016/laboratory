package cn.edu.njupt.dao;

import cn.edu.njupt.model.WritingsResource;

public interface WritingsResourceMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(WritingsResource record);

    int insertSelective(WritingsResource record);

    WritingsResource selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(WritingsResource record);

    int updateByPrimaryKey(WritingsResource record);
}