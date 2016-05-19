package cn.edu.njupt.model;

public class Teach {
    private Integer teachid;

    private String coursename;

    private String coursetearm;

    private Integer userid;
    
    private Integer teachtype;
    



    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename == null ? null : coursename.trim();
    }

    public String getCoursetearm() {
        return coursetearm;
    }

    public void setCoursetearm(String coursetearm) {
        this.coursetearm = coursetearm == null ? null : coursetearm.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

	public Integer getTeachid() {
		return teachid;
	}

	public void setTeachid(Integer teachid) {
		this.teachid = teachid;
	}

	public Integer getTeachtype() {
		return teachtype;
	}

	public void setTeachtype(Integer teachtype) {
		this.teachtype = teachtype;
	}


}