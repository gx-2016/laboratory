package cn.edu.njupt.model;

import java.util.Date;

public class Text {
    private Integer testid;

    private String testname;

    private Date testdate;

    private String testremark;

    public Integer getTestid() {
        return testid;
    }

    public void setTestid(Integer testid) {
        this.testid = testid;
    }

    public String getTestname() {
        return testname;
    }

    public void setTestname(String testname) {
        this.testname = testname == null ? null : testname.trim();
    }

    public Date getTestdate() {
        return testdate;
    }

    public void setTestdate(Date testdate) {
        this.testdate = testdate;
    }

    public String getTestremark() {
        return testremark;
    }

    public void setTestremark(String testremark) {
        this.testremark = testremark == null ? null : testremark.trim();
    }
}