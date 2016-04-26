package cn.edu.njupt.model;

import java.util.Date;

public class Writings {
    private Integer wtringsid;

    private String writingsname;

    private String writingsabstract;

    private String writingstype;

    private Date writingstime;

    private String writingspeople;

    private String writingsquote;

    private String remark;
    
    private String personpageId;
    

    public String getPersonpageId() {
		return personpageId;
	}

	public void setPersonpageId(String personpageId) {
		this.personpageId = personpageId;
	}

	public Integer getWtringsid() {
        return wtringsid;
    }

    public void setWtringsid(Integer wtringsid) {
        this.wtringsid = wtringsid;
    }

    public String getWritingsname() {
        return writingsname;
    }

    public void setWritingsname(String writingsname) {
        this.writingsname = writingsname == null ? null : writingsname.trim();
    }

    public String getWritingsabstract() {
        return writingsabstract;
    }

    public void setWritingsabstract(String writingsabstract) {
        this.writingsabstract = writingsabstract == null ? null : writingsabstract.trim();
    }

    public String getWritingstype() {
        return writingstype;
    }

    public void setWritingstype(String writingstype) {
        this.writingstype = writingstype == null ? null : writingstype.trim();
    }

    public Date getWritingstime() {
        return writingstime;
    }

    public void setWritingstime(Date writingstime) {
        this.writingstime = writingstime;
    }

    public String getWritingspeople() {
        return writingspeople;
    }

    public void setWritingspeople(String writingspeople) {
        this.writingspeople = writingspeople == null ? null : writingspeople.trim();
    }

    public String getWritingsquote() {
        return writingsquote;
    }

    public void setWritingsquote(String writingsquote) {
        this.writingsquote = writingsquote == null ? null : writingsquote.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}