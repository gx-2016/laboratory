package cn.edu.njupt.model;


public class PersonPageWithBLOBs extends PersonPage {
    private String supervisor;

    private String biography;

    private String research;
    
	private String mailAddress;
	
	
    //著作业务逻辑字段
    private Integer writingsid;

	public Integer getWritingsid() {
		return writingsid;
	}

	public void setWritingsid(Integer writingsid) {
		this.writingsid = writingsid;
	}

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
}