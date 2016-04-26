package cn.edu.njupt.model;

import java.util.Date;
import java.util.List;

/**
 * @Author Administrator
 * @Description TODO
 * @Date 2016年4月25日
 */
public class Contest {
    private Integer contestid;

    private String contestname;

    private String contestdestination;

    private Date contesttime;

    private String contestTeamid;
    
    private String contestTeamName;

    private String contestAward;
    
    private String contestRank;
    
    private String contestType;

    private String contestResourceId;
    
    //业务逻辑
    private List<UserTeam> userTeams;
    
    private Integer size;
    
    
    public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}
    
    
    public List<UserTeam> getUserTeams() {
		return userTeams;
	}

	public void setUserTeams(List<UserTeam> userTeams) {
		this.userTeams = userTeams;
	}

	public String getContestResourceId() {
		return contestResourceId;
	}

	public void setContestResourceId(String contestResourceId) {
		this.contestResourceId = contestResourceId;
	}

	public String getContestRank() {
		return contestRank;
	}

	public void setContestRank(String contestRank) {
		this.contestRank = contestRank;
	}

	public String getContestType() {
		return contestType;
	}

	public void setContestType(String contestType) {
		this.contestType = contestType;
	}


	public Integer getContestid() {
		return contestid;
	}

	public void setContestid(Integer contestid) {
		this.contestid = contestid;
	}

	public String getContestname() {
        return contestname;
    }

    public void setContestname(String contestname) {
        this.contestname = contestname == null ? null : contestname.trim();
    }

    public String getContestdestination() {
        return contestdestination;
    }

    public void setContestdestination(String contestdestination) {
        this.contestdestination = contestdestination == null ? null : contestdestination.trim();
    }

    public Date getContesttime() {
        return contesttime;
    }

    public void setContesttime(Date contesttime) {
        this.contesttime = contesttime;
    }

    public String getContestTeamid() {
        return contestTeamid;
    }

    public void setContestTeamid(String contestTeamid) {
        this.contestTeamid = contestTeamid == null ? null : contestTeamid.trim();
    }

    public String getContestAward() {
        return contestAward;
    }

    public void setContestAward(String contestAward) {
        this.contestAward = contestAward == null ? null : contestAward.trim();
    }

	public String getContestTeamName() {
		return contestTeamName;
	}

	public void setContestTeamName(String contestTeamName) {
		this.contestTeamName = contestTeamName;
	}
    
    
}