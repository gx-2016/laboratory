package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.ContestResource;

public interface ContestResourceMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(ContestResource record);

    int insertSelective(ContestResource record);

    ContestResource selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(ContestResource record);

    int updateByPrimaryKey(ContestResource record);

	List<ContestResource> findContestResourceByContestId(Integer contestid);
}