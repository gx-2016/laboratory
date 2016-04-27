package cn.edu.njupt.model;

public class PersonPage {
    private Integer personpageid;

    private Integer userid;

    public Integer getPersonpageid() {
        return personpageid;
    }

    public void setPersonpageid(Integer personpageid) {
        this.personpageid = personpageid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
    
    //非业务逻辑字段
    private Integer writingsid;

	public Integer getWritingsid() {
		return writingsid;
	}

	public void setWritingsid(Integer writingsid) {
		this.writingsid = writingsid;
	}
    
    
}