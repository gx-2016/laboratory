package cn.edu.njupt.model;

import java.util.Date;

public class User {
    private Integer userid;

    private String companyid;

    private String workdetail;

    private String username;

    private String logonname;

    private String logonpwd;

    private String sexid;

    private Date birthday;

    private String address;

    private String email;

    private String mobile;

    private String isduty;

    private Date ondutydate;

    private Date offdutydate;

    private String personpage;

    private String photourl;

    private String education;

    private String remark;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getCompanyid() {
        return companyid;
    }

    public void setCompanyid(String companyid) {
        this.companyid = companyid == null ? null : companyid.trim();
    }

    public String getWorkdetail() {
        return workdetail;
    }

    public void setWorkdetail(String workdetail) {
        this.workdetail = workdetail == null ? null : workdetail.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getLogonname() {
        return logonname;
    }

    public void setLogonname(String logonname) {
        this.logonname = logonname == null ? null : logonname.trim();
    }

    public String getLogonpwd() {
        return logonpwd;
    }

    public void setLogonpwd(String logonpwd) {
        this.logonpwd = logonpwd == null ? null : logonpwd.trim();
    }

    public String getSexid() {
        return sexid;
    }

    public void setSexid(String sexid) {
        this.sexid = sexid == null ? null : sexid.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public String getIsduty() {
        return isduty;
    }

    public void setIsduty(String isduty) {
        this.isduty = isduty == null ? null : isduty.trim();
    }

    public Date getOndutydate() {
        return ondutydate;
    }

    public void setOndutydate(Date ondutydate) {
        this.ondutydate = ondutydate;
    }

    public Date getOffdutydate() {
        return offdutydate;
    }

    public void setOffdutydate(Date offdutydate) {
        this.offdutydate = offdutydate;
    }

    public String getPersonpage() {
        return personpage;
    }

    public void setPersonpage(String personpage) {
        this.personpage = personpage == null ? null : personpage.trim();
    }

    public String getPhotourl() {
        return photourl;
    }

    public void setPhotourl(String photourl) {
        this.photourl = photourl == null ? null : photourl.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}