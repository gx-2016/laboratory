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

	/**
	 * @Description: TODO
	 * @Parameter: @param teamid
	 * @Parameter: @return
	 * @Return:int
	 * @Author: 高翔
	 * @Date: 2016年5月20日
	 */
	int deleteTeamUserById(String teamid);

	/**
	 * @Description: TODO
	 * @Parameter: @param list
	 * @Parameter: @return
	 * @Return:Object
	 * @Author: 高翔
	 * @Date: 2016年5月20日
	 */
	int insertUserTeam(List<UserTeam> list);

	/**
	 * @Description: TODO
	 * @Parameter: @param string
	 * @Parameter: @return
	 * @Return:List<UserTeam>
	 * @Author: 高翔
	 * @Date: 2016年5月20日
	 */
	List<UserTeam> findExistUserTeamByTeamId(String string);
}