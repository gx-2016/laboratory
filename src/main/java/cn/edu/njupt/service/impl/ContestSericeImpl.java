package cn.edu.njupt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.njupt.dao.ContestMapper;
import cn.edu.njupt.dao.ContestResourceMapper;
import cn.edu.njupt.model.Contest;
import cn.edu.njupt.model.ContestResource;
import cn.edu.njupt.service.ContestServiceI;


@Service("contestService")
public class ContestSericeImpl implements ContestServiceI{
	
	@Resource(name="contestMapper")
	private ContestMapper contestMapper ;
	
	@Resource(name="contestResourceMapper")
	private ContestResourceMapper contestResourceMapper ;

	@Override
	public List<Contest> queryAllContests(Contest contest) {
		
		return contestMapper.queryAllContests(contest);
	}

	/**
	 * @Description: 根据contestid查询所有的比赛资源
	 * @Parameter: @param contestid
	 * @Parameter: @return
	 * @Return:List<ContestResource>
	 * @Author: 高翔
	 * @Date: 2016年4月26日
	 */
	@Override
	public List<ContestResource> findContestResourceByContestId(
			Integer contestid) {

		return contestResourceMapper.findContestResourceByContestId(contestid);
	}
	
	


}
