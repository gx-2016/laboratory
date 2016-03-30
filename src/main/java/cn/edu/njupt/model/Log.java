package cn.edu.njupt.model;

import java.util.Date;

public class Log {
    private Integer logid;

    private String opename;

    private Date opetime;

    private String details;

    public Integer getLogid() {
        return logid;
    }

    public void setLogid(Integer logid) {
        this.logid = logid;
    }

    public String getOpename() {
        return opename;
    }

    public void setOpename(String opename) {
        this.opename = opename == null ? null : opename.trim();
    }

    public Date getOpetime() {
        return opetime;
    }

    public void setOpetime(Date opetime) {
        this.opetime = opetime;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details == null ? null : details.trim();
    }
}