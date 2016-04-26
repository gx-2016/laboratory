package cn.edu.njupt.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.edu.njupt.model.Contest;
import cn.edu.njupt.model.ContestResource;
import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.service.ContestServiceI;
import cn.edu.njupt.service.SystemDDLServiceI;
import cn.edu.njupt.util.FileUtil;
import cn.edu.njupt.util.StringHelper;

//后台管理learn 处理controller
@Controller
@RequestMapping("/contest")
public class ContestAdminController {
	
	@Resource(name="contestService")
	private ContestServiceI contestService;

	@Resource(name="systemDDLService")
	private SystemDDLServiceI  systemDDLService;
	
	@RequestMapping("/contestAdmin.do")
	public String contestAdmin(ModelMap modelMap){
		//1.数据字典中查询所有组名,比赛类型
		List<SystemDDL> teamList = systemDDLService.findDDLListByKeyWord("队伍名称");
		List<SystemDDL> contestTypeList = systemDDLService.findDDLListByKeyWord("比赛类型");
		List<Contest> contestList = contestService.queryAllContests();
		Integer teamId = 0;
		Integer typeId = 0;
		
		//3.遍历比赛列表，通过teamId查询比赛队伍信息
		for (Contest contest2 : contestList) {
			if(null!=contest2.getContestTeamid()){
				teamId = Integer.parseInt(contest2.getContestTeamid().trim());
			}
			if(null!=contest2.getContestType()){
				typeId = Integer.parseInt(contest2.getContestType().trim());
			}
		    //3.1先从数据字典中查询teamId的队伍名称
		   SystemDDL systemDDL = systemDDLService.findDDLByDdlCode("队伍名称",teamId);
		    if(null!=systemDDL){
		      String contestTeamName = systemDDL.getDdlname();
		       contest2.setContestTeamName(contestTeamName);
		    }
		    SystemDDL systemDDL1 = systemDDLService.findDDLByDdlCode("比赛类型",typeId);
		    if(null!=systemDDL1){
		      String contestTypeName = systemDDL1.getDdlname();
		       contest2.setContestTypeName(contestTypeName);
		    }
		}
		
		modelMap.put("teamList", teamList);
		modelMap.put("contestTypeList", contestTypeList);
		modelMap.put("contestList", contestList);
		
		return "contest/contestAdmin";
	}
	
	@Transactional(isolation=Isolation.DEFAULT)
	@RequestMapping(value="/saveContest.do", method = RequestMethod.POST)
	public String saveContest(String contestname,String contestdestination,
			                    String contesttime,String contestTeamid,
			                    String contestRank,String contestAward,String contestType,
			                    @RequestParam("file") CommonsMultipartFile file,
			                    HttpServletRequest httpServletRequest,ModelMap map){
		try {
			if (!file.isEmpty() && file.getContentType().contains("image")) {
				  File  filetemp = FileUtil.createFile(file, httpServletRequest, "/contest/");
	              boolean flag = FileUtil.copyFile(file, httpServletRequest, "/contest/");
				  //上传成功 
	              if(flag)
				   {
	            	  //1.获取上传文件的路径
		           	   String filepath = filetemp.getPath().substring(filetemp.getPath().lastIndexOf("\\"));
		           	   System.out.println(filepath);
	            	  
	            	   //2.封装javabean
	            	   Contest  contest = new Contest();
	            	   contest.setContestAward(contestAward);
	            	   contest.setContestdestination(contestdestination);
	            	   contest.setContestname(contestname);
	            	   contest.setContestRank(contestRank);
	            	   contest.setContestTeamid(contestTeamid);
	            	   contest.setContesttime(StringHelper.stringConvertDate(contesttime));
	            	   contest.setContestType(contestType);
	            	   //插入前先判断有没有插入过
	            	   Contest temp = contestService.findContestByNameAndTeamId(contest);
	            	   int result = 0;
		            	   if(null == temp)
		            	   {
		            		   result = contestService.insert(contest);
		            		   contest = contestService.findContestByNameAndTeamId(contest);
			            	   //3.如果插入成功影响集返回为1
			            	   if(result > 0){
			            		   //3.保存比赛资源图片
			            		   //3.1现获取刚刚保存的contestid
			            		   ContestResource contestResource = new ContestResource();
			            		   contestResource.setContestid(contest.getContestid());
			            		   contestResource.setContestresourceurl(filepath);
	//		            		   contestResource.setContestresourceabstract(contestresourceabstract);
	//		            		   contestResource.setContestresourcename(contestresourcename);
	
			            		   contestService.inserContestResource(contestResource);
			            		   map.put("message", "保存比赛对象成功！");
			            		   return "forward:contestAdmin.do";
				            	   }
				            	   else{
				            		   map.put("message", "保存比赛对象失败！");
				            		   return "forward:contestAdmin.do";
				            	   }
	            	   
	            	   }
	            	   else
	            	   {
	            		   map.put("message", "保存比赛对象失败！因为您已经保存过一遍，可通过编辑修改内容！");
	            		   return "forward:contestAdmin.do";
	    			   }
				   }
				   else
				   {
					   map.put("message", "上传文件失败！");
				       return "500";
				   }
				}else{
					 map.put("message", "请选择正确的文件！");
					 return "500";
				}
		} catch (Exception e) {
			 map.put("message", "数据保存异常");
			 return "500";
		}
		
	}
}
