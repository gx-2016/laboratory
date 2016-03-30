package cn.edu.njupt.model;

import java.util.Date;

public class HomeSpotLight {
    private Integer seqid;

    private String spotlightname;

    private String spotlightpicurl;

    private Date progresstime;

    private String createuserid;

    private String remark;

    public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
    }

    public String getSpotlightname() {
        return spotlightname;
    }

    public void setSpotlightname(String spotlightname) {
        this.spotlightname = spotlightname == null ? null : spotlightname.trim();
    }

    public String getSpotlightpicurl() {
        return spotlightpicurl;
    }

    public void setSpotlightpicurl(String spotlightpicurl) {
        this.spotlightpicurl = spotlightpicurl == null ? null : spotlightpicurl.trim();
    }

    public Date getProgresstime() {
        return progresstime;
    }

    public void setProgresstime(Date progresstime) {
        this.progresstime = progresstime;
    }

    public String getCreateuserid() {
        return createuserid;
    }

    public void setCreateuserid(String createuserid) {
        this.createuserid = createuserid == null ? null : createuserid.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}