package cn.edu.njupt.model;

public class NewsResource {
    private Integer seqid;

    private String newsid;

    private String newsresourceid;

    private String newsresourcename;

    private String newsresourceurl;

    private String remark;

    public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
    }

    public String getNewsid() {
        return newsid;
    }

    public void setNewsid(String newsid) {
        this.newsid = newsid == null ? null : newsid.trim();
    }

    public String getNewsresourceid() {
        return newsresourceid;
    }

    public void setNewsresourceid(String newsresourceid) {
        this.newsresourceid = newsresourceid == null ? null : newsresourceid.trim();
    }

    public String getNewsresourcename() {
        return newsresourcename;
    }

    public void setNewsresourcename(String newsresourcename) {
        this.newsresourcename = newsresourcename == null ? null : newsresourcename.trim();
    }

    public String getNewsresourceurl() {
        return newsresourceurl;
    }

    public void setNewsresourceurl(String newsresourceurl) {
        this.newsresourceurl = newsresourceurl == null ? null : newsresourceurl.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}