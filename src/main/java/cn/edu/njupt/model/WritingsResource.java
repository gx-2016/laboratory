package cn.edu.njupt.model;

public class WritingsResource {
    private Integer seqid;

    private String wtringsid;

    private String writingsresourcename;

    private String writingsresourceurl;

    private String writingsresourcetype;

    private String remark;

    public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
    }

    public String getWtringsid() {
        return wtringsid;
    }

    public void setWtringsid(String wtringsid) {
        this.wtringsid = wtringsid == null ? null : wtringsid.trim();
    }

    public String getWritingsresourcename() {
        return writingsresourcename;
    }

    public void setWritingsresourcename(String writingsresourcename) {
        this.writingsresourcename = writingsresourcename == null ? null : writingsresourcename.trim();
    }

    public String getWritingsresourceurl() {
        return writingsresourceurl;
    }

    public void setWritingsresourceurl(String writingsresourceurl) {
        this.writingsresourceurl = writingsresourceurl == null ? null : writingsresourceurl.trim();
    }

    public String getWritingsresourcetype() {
        return writingsresourcetype;
    }

    public void setWritingsresourcetype(String writingsresourcetype) {
        this.writingsresourcetype = writingsresourcetype == null ? null : writingsresourcetype.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}