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
	public List<Contest> queryAllContestsByType(Contest contest) {
		
		return contestMapper.queryAllContestsByType(contest);
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

	/*
	 * 保存比赛获奖信息
	 */
	@Override
	public int insert(Contest contest) {
		return contestMapper.insert(contest);
	}

	/*
	 *  查询所有比赛获奖信息
	 */
	@Override
	public List<Contest> queryAllContests() {
		return contestMapper.queryAllContests();
	}

	/*
	 * 根据名称和组别获取contestId
	 */
	@Override
	public Contest findContestByNameAndTeamId(Contest contest) {
		return contestMapper.findContestByNameAndTeamId(contest);
	}

	/* 
	 * 保存比赛的图片资源文件
	 */
	@Override
	public int inserContestResource(ContestResource contestResource) {
		return contestResourceMapper.insertSelective(contestResource);
	}
	
	


}
