package cn.edu.njupt.model;

public class ProjectResource {
    private Integer seqid;

    private String projectid;

    private String projectresourcename;

    private String projectresourceurl;

    private String projectresourcetype;

    private String remark;

    public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
    }

    public String getProjectid() {
        return projectid;
    }

    public void setProjectid(String projectid) {
        this.projectid = projectid == null ? null : projectid.trim();
    }

    public String getProjectresourcename() {
        return projectresourcename;
    }

    public void setProjectresourcename(String projectresourcename) {
        this.projectresourcename = projectresourcename == null ? null : projectresourcename.trim();
    }

    public String getProjectresourceurl() {
        return projectresourceurl;
    }

    public void setProjectresourceurl(String projectresourceurl) {
        this.projectresourceurl = projectresourceurl == null ? null : projectresourceurl.trim();
    }

    public String getProjectresourcetype() {
        return projectresourcetype;
    }

    public void setProjectresourcetype(String projectresourcetype) {
        this.projectresourcetype = projectresourcetype == null ? null : projectresourcetype.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}