package cn.edu.njupt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.njupt.dao.UserTeamMapper;
import cn.edu.njupt.model.UserTeam;
import cn.edu.njupt.service.TeamServiceI;

@Service("teamService")
public class TeamServiceImpl implements TeamServiceI{

	@Resource(name = "userTeamMapper")
	private UserTeamMapper userTeamMapper;
	

	/**
	 * @Description: 左外链接，查出所有用户,在该组中的用户加一个flag标记
	 * @Parameter: @param string
	 * @Parameter: @return
	 * @Return:List<UserTeam>
	 * @Author: 高翔
	 * @Date: 2016年5月20日
	 */
	@Override
	public List<UserTeam> findUserTeamByTeamId(String teamid) {
		return userTeamMapper.findUserTeamByTeamId(teamid);
	}


	/* 
	 * 保存用户队伍关联
	 */
	@Transactional(readOnly=false,isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED)
	@Override
	public int insertUserTeam(List<UserTeam> list, String teamid) {
		//根据角色id删除角色和用户关联
		this.deleteTeamUserById(teamid);
		return userTeamMapper.insertUserTeam(list);
		
	}


	/**
	 * @Description: TODO
	 * @Parameter: @param teamid
	 * @Return:void
	 * @Author: 高翔
	 * @Date: 2016年5月20日
	 */
	private int deleteTeamUserById(String teamid) {
		return userTeamMapper.deleteTeamUserById(teamid);
		
	}


	/**
	 * @Description: 内链接，只查出存在的用户
	 * @Parameter: @param string
	 * @Parameter: @return
	 * @Return:List<UserTeam>
	 * @Author: 高翔
	 * @Date: 2016年5月20日
	 */
	@Override
	public List<UserTeam> findExistUserTeamByTeamId(String string) {
		return userTeamMapper.findExistUserTeamByTeamId(string);
	}


}
