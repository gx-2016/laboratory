package cn.edu.njupt.model;

import java.util.Date;

public class Contest {
    private Integer seqid;

    private String contestname;

    private String contestdestination;

    private Date contesttime;

    private String contestTeamid;

    private String contestAward;

    public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
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
}