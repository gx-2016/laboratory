package cn.edu.njupt.model;

public class PersonPageWithBLOBs extends PersonPage {
    private String supervisor;

    private String biography;

    private String research;
    
	private String mailAddress;
	
	//数据项对应的属性，预留10个备用
	private String field_1;
	private String field_2;
	private String field_3;
	private String field_4;
	private String field_5;
	private String field_6;
	private String field_7;
	private String field_8;
	private String field_9;
	private String field_10;
	
	
//    //著作业务逻辑字段
//    private Integer writingsid;

//	public Integer getWritingsid() {
//		return writingsid;
//	}
//
//	public void setWritingsid(Integer writingsid) {
//		this.writingsid = writingsid;
//	}

	//用户信息的业务逻辑字段
	private String username;

    private String logonname;
    
	private String education;

	private String photourl;
	
	private String email;

	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getLogonname() {
			return logonname;
		}

		public void setLogonname(String logonname) {
			this.logonname = logonname;
		}

		public String getEducation() {
			return education;
		}

		public void setEducation(String education) {
			this.education = education;
		}

		public String getPhotourl() {
			return photourl;
		}

		public void setPhotourl(String photourl) {
			this.photourl = photourl;
		}


    public String getMailAddress() {
			return mailAddress;
		}

		public void setMailAddress(String mailaddress) {
			this.mailAddress = mailaddress;
		}

	public String getSupervisor() {
        return supervisor;
    }

    public void setSupervisor(String supervisor) {
        this.supervisor = supervisor == null ? null : supervisor.trim();
    }

    public String getBiography() {
        return biography;
    }

    public void setBiography(String biography) {
        this.biography = biography == null ? null : biography.trim();
    }

    public String getResearch() {
        return research;
    }

    public void setResearch(String research) {
        this.research = research == null ? null : research.trim();
    }

	public String getField_1() {
		return field_1;
	}

	public void setField_1(String field_1) {
		this.field_1 = field_1;
	}

	public String getField_2() {
		return field_2;
	}

	public void setField_2(String field_2) {
		this.field_2 = field_2;
	}

	public String getField_3() {
		return field_3;
	}

	public void setField_3(String field_3) {
		this.field_3 = field_3;
	}

	public String getField_4() {
		return field_4;
	}

	public void setField_4(String field_4) {
		this.field_4 = field_4;
	}

	public String getField_5() {
		return field_5;
	}

	public void setField_5(String field_5) {
		this.field_5 = field_5;
	}

	public String getField_6() {
		return field_6;
	}

	public void setField_6(String field_6) {
		this.field_6 = field_6;
	}

	public String getField_7() {
		return field_7;
	}

	public void setField_7(String field_7) {
		this.field_7 = field_7;
	}

	public String getField_8() {
		return field_8;
	}

	public void setField_8(String field_8) {
		this.field_8 = field_8;
	}

	public String getField_9() {
		return field_9;
	}

	public void setField_9(String field_9) {
		this.field_9 = field_9;
	}

	public String getField_10() {
		return field_10;
	}

	public void setField_10(String field_10) {
		this.field_10 = field_10;
	}
    
    
}