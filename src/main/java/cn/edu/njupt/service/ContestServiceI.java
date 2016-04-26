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
	public List<Contest> queryAllContestsByType(Contest contest);

	public List<ContestResource> findContestResourceByContestId(
			Integer contestid);

	public int insert(Contest contest);

	public List<Contest> queryAllContests();

	public Contest findContestByNameAndTeamId(Contest contest);

	public int inserContestResource(ContestResource contestResource);

}
