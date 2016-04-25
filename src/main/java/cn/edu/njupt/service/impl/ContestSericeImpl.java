package cn.edu.njupt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.njupt.dao.ContestMapper;
import cn.edu.njupt.model.Contest;
import cn.edu.njupt.service.ContestServiceI;


@Service("contestService")
public class ContestSericeImpl implements ContestServiceI{
	
	@Resource(name="contestMapper")
	private ContestMapper contestMapper ;

	@Override
	public List<Contest> queryAllContests(Contest contest) {
		
		return contestMapper.queryAllContests(contest);
	}
	



}
