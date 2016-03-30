package cn.edu.njupt.dao;

import cn.edu.njupt.model.LearnResource;

public interface LearnResourceMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(LearnResource record);

    int insertSelective(LearnResource record);

    LearnResource selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(LearnResource record);

    int updateByPrimaryKey(LearnResource record);
}