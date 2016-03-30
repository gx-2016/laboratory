package cn.edu.njupt.model;

import java.util.Date;

public class LearnResource {
    private Integer seqid;

    private String learnresourcename;

    private String learnresourceabstract;

    private String learnresourcetype;

    private String learnresourceurl;

    private Date progresstime;

    private String createuserid;

    private String remark;

    public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
    }

    public String getLearnresourcename() {
        return learnresourcename;
    }

    public void setLearnresourcename(String learnresourcename) {
        this.learnresourcename = learnresourcename == null ? null : learnresourcename.trim();
    }

    public String getLearnresourceabstract() {
        return learnresourceabstract;
    }

    public void setLearnresourceabstract(String learnresourceabstract) {
        this.learnresourceabstract = learnresourceabstract == null ? null : learnresourceabstract.trim();
    }

    public String getLearnresourcetype() {
        return learnresourcetype;
    }

    public void setLearnresourcetype(String learnresourcetype) {
        this.learnresourcetype = learnresourcetype == null ? null : learnresourcetype.trim();
    }

    public String getLearnresourceurl() {
        return learnresourceurl;
    }

    public void setLearnresourceurl(String learnresourceurl) {
        this.learnresourceurl = learnresourceurl == null ? null : learnresourceurl.trim();
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