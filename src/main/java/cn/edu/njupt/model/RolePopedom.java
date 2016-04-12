package cn.edu.njupt.model;

public class RolePopedom {
    private Integer roleid;

    private String popedomcode;

    private String remark;
    
	public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getPopedomcode() {
        return popedomcode;
    }

    public void setPopedomcode(String popedomcode) {
        this.popedomcode = popedomcode == null ? null : popedomcode.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}