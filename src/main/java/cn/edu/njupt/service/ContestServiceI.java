package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.Contest;
import cn.edu.njupt.model.ContestResource;

/**
 * @Author gx
 * @Description 比赛服务类
 * @Date 2016年4月22日
 */
public interface ContestServiceI {
	public List<Contest> queryAllContests(Contest contest);

	public List<ContestResource> findContestResourceByContestId(
			Integer contestid);
}
