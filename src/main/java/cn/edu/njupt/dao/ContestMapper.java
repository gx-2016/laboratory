package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.Contest;

public interface ContestMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(Contest record);

    int insertSelective(Contest record);

    Contest selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(Contest record);

    int updateByPrimaryKey(Contest record);

	List<Contest> queryAllContests();

	List<Contest> queryAllContestsByType(Contest contest);

	Contest findContestByNameAndTeamId(Contest contest);

}