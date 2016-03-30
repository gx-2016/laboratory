package cn.edu.njupt.model;

import java.util.Date;

public class ShareResource {
    private Integer seqid;

    private String shareresourcename;

    private String shareresourceabstarct;

    private String shareresourcetype;

    private String shareresourceurl;

    private Date progresstime;

    private String createuserid;

    private String remark;

    public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
    }

    public String getShareresourcename() {
        return shareresourcename;
    }

    public void setShareresourcename(String shareresourcename) {
        this.shareresourcename = shareresourcename == null ? null : shareresourcename.trim();
    }

    public String getShareresourceabstarct() {
        return shareresourceabstarct;
    }

    public void setShareresourceabstarct(String shareresourceabstarct) {
        this.shareresourceabstarct = shareresourceabstarct == null ? null : shareresourceabstarct.trim();
    }

    public String getShareresourcetype() {
        return shareresourcetype;
    }

    public void setShareresourcetype(String shareresourcetype) {
        this.shareresourcetype = shareresourcetype == null ? null : shareresourcetype.trim();
    }

    public String getShareresourceurl() {
        return shareresourceurl;
    }

    public void setShareresourceurl(String shareresourceurl) {
        this.shareresourceurl = shareresourceurl == null ? null : shareresourceurl.trim();
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