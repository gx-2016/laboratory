package cn.edu.njupt.model;

import java.util.Set;

public class SystemDDL {
    private Integer seqid;

    private String keyword;

    private Integer ddlcode;

    private String ddlname;
    
    //竞赛队伍和用户关联表
    private Set<User> users;

    //竞赛队伍和比赛关联表
    private Set<Contest> contests;
    
    
	public Set<Contest> getContests() {
		return contests;
	}

	public void setContests(Set<Contest> contests) {
		this.contests = contests;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword == null ? null : keyword.trim();
    }

    public Integer getDdlcode() {
        return ddlcode;
    }

    public void setDdlcode(Integer ddlcode) {
        this.ddlcode = ddlcode;
    }

    public String getDdlname() {
        return ddlname;
    }

    public void setDdlname(String ddlname) {
        this.ddlname = ddlname == null ? null : ddlname.trim();
    }
}