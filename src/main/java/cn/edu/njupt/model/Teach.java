package cn.edu.njupt.model;

public class Teach {
    private Integer seqid;

    private String coursename;

    private String coursetearm;

    private Integer userid;

    public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename == null ? null : coursename.trim();
    }

    public String getCoursetearm() {
        return coursetearm;
    }

    public void setCoursetearm(String coursetearm) {
        this.coursetearm = coursetearm == null ? null : coursetearm.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}