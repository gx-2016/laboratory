package cn.edu.njupt.model;

import java.util.Date;

public class Project {
    private Integer projectid;

    private String projectname;

    private String projectabstract;

    private String projectype;

    private Date projecttime;

    private String projectpeople;

    private String projectreference;

    private String remark;

    public Integer getProjectid() {
        return projectid;
    }

    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }

    public String getProjectname() {
        return projectname;
    }

    public void setProjectname(String projectname) {
        this.projectname = projectname == null ? null : projectname.trim();
    }

    public String getProjectabstract() {
        return projectabstract;
    }

    public void setProjectabstract(String projectabstract) {
        this.projectabstract = projectabstract == null ? null : projectabstract.trim();
    }

    public String getProjectype() {
        return projectype;
    }

    public void setProjectype(String projectype) {
        this.projectype = projectype == null ? null : projectype.trim();
    }

    public Date getProjecttime() {
        return projecttime;
    }

    public void setProjecttime(Date projecttime) {
        this.projecttime = projecttime;
    }

    public String getProjectpeople() {
        return projectpeople;
    }

    public void setProjectpeople(String projectpeople) {
        this.projectpeople = projectpeople == null ? null : projectpeople.trim();
    }

    public String getProjectreference() {
        return projectreference;
    }

    public void setProjectreference(String projectreference) {
        this.projectreference = projectreference == null ? null : projectreference.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}