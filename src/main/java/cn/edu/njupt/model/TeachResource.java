package cn.edu.njupt.model;

public class TeachResource {
    private Integer seqid;

    private String teachresourcename;

    private String teachresourceurl;

    private String teachresourceabstract;

    private Integer teachid;

    public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
    }

    public String getTeachresourcename() {
        return teachresourcename;
    }

    public void setTeachresourcename(String teachresourcename) {
        this.teachresourcename = teachresourcename == null ? null : teachresourcename.trim();
    }

    public String getTeachresourceurl() {
        return teachresourceurl;
    }

    public void setTeachresourceurl(String teachresourceurl) {
        this.teachresourceurl = teachresourceurl == null ? null : teachresourceurl.trim();
    }

    public String getTeachresourceabstract() {
        return teachresourceabstract;
    }

    public void setTeachresourceabstract(String teachresourceabstract) {
        this.teachresourceabstract = teachresourceabstract == null ? null : teachresourceabstract.trim();
    }

    public Integer getTeachid() {
        return teachid;
    }

    public void setTeachid(Integer teachid) {
        this.teachid = teachid;
    }
}