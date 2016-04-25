package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.UserTeam;

public interface UserTeamMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(UserTeam record);

    int insertSelective(UserTeam record);

    UserTeam selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(UserTeam record);

    int updateByPrimaryKey(UserTeam record);

	/**
	 * @Description: TODO
	 * @Parameter: @param teamid
	 * @Parameter: @return
	 * @Return:List<UserTeam>
	 * @Author: 高翔
	 * @Date: 2016年4月25日
	 */
	List<UserTeam> findUserTeamByTeamId(String teamid);
}