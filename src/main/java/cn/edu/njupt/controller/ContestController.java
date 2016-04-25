package cn.edu.njupt.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.Contest;
import cn.edu.njupt.service.ContestServiceI;

@Controller
public class ContestController {
	
	@Resource(name="contestService")
	private ContestServiceI contestService;
	
	@RequestMapping("/contest.do")
	public String contest(ModelMap modelMap){	
		//1.获取所有比赛列表，按日期排序
		List<Contest> contestList = contestService.queryAllContests();
		modelMap.put("contestList", contestList);
		
		return "contest";
    }
	
}
