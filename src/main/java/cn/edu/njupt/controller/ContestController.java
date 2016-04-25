package cn.edu.njupt.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.Contest;
import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.model.UserTeam;
import cn.edu.njupt.service.ContestServiceI;
import cn.edu.njupt.service.SystemDDLServiceI;
import cn.edu.njupt.service.TeamServiceI;

@Controller
public class ContestController {
	
	@Resource(name="contestService")
	private ContestServiceI contestService;
	
	@Resource(name="systemDDLService")
	private SystemDDLServiceI  systemDDLService;
	
	@Resource(name="teamService")
	private TeamServiceI  teamService;
	
	@RequestMapping("/contest.do")
	public String contest(ModelMap modelMap){	
		//1.从数据字典中读出比赛的类型
		Contest contest = new Contest();
		String contestType = "";
		SystemDDL systemDDL = systemDDLService.findDDLByDdlName("比赛类型", "校外");
		if(null!=systemDDL){
			 contestType = systemDDL.getDdlcode()+"";
			 contest.setContestType(contestType);
		}
		
		//2.根据比赛的类型，获取所有比赛列表，按日期排序。
		List<Contest> contestList = contestService.queryAllContests(contest);
		System.out.println("size:"+contestList.size());
		Integer teamId ;
		//3.遍历比赛列表，通过teamId查询比赛队伍信息
		for (Contest contest2 : contestList) {
			teamId = Integer.parseInt(contest2.getContestTeamid().trim());
		    //3.1先从数据字典中查询teamId的队伍名称
		    systemDDL = systemDDLService.findDDLByDdlCode("队伍名称",teamId);
		    if(null!=systemDDL){
		      String contestTeamName = systemDDL.getDdlname();
		       contest2.setContestTeamName(contestTeamName);
		    }
		    //3.2从用户队伍表中查询到用户队伍关联关系和用户信息
		  List<UserTeam> userTeams = teamService.findUserTeamByTeamId(teamId+"");
		  contest2.setUserTeams(userTeams);
		  //设置页面上span的宽度
		  contest2.setSize(12/userTeams.size());
		  System.out.println("size"+ userTeams.size());
		}
		modelMap.put("contestList", contestList);
		
		return "contest";
    }
	
}
