package cn.edu.njupt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.njupt.dao.UserTeamMapper;
import cn.edu.njupt.model.UserTeam;
import cn.edu.njupt.service.TeamServiceI;

@Service("teamService")
public class TeamServiceImpl implements TeamServiceI{

	@Resource(name = "userTeamMapper")
	private UserTeamMapper userTeamMapper;
	

	/* 
	 * 根据角色id查询该角色拥有的所有用户
	 */
	@Override
	public List<UserTeam> findUserTeamByTeamId(String teamid) {
		return userTeamMapper.findUserTeamByTeamId(teamid);
	}


}
