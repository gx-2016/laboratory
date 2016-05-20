package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.UserTeam;


public interface TeamServiceI {
	
	List<UserTeam> findUserTeamByTeamId(String teamid);

	int insertUserTeam(List<UserTeam> list, String teamid);
	
	List<UserTeam> findExistUserTeamByTeamId(String string);

}
