package cn.edu.njupt.model;

public class ContestResource {
    private Integer seqid;

    private String contestresourcename;

    private String contestresourceurl;

    private String contestresourceabstract;

    private Integer contestid;

    public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
    }

    public String getContestresourcename() {
        return contestresourcename;
    }

    public void setContestresourcename(String contestresourcename) {
        this.contestresourcename = contestresourcename == null ? null : contestresourcename.trim();
    }

    public String getContestresourceurl() {
        return contestresourceurl;
    }

    public void setContestresourceurl(String contestresourceurl) {
        this.contestresourceurl = contestresourceurl == null ? null : contestresourceurl.trim();
    }

    public String getContestresourceabstract() {
        return contestresourceabstract;
    }

    public void setContestresourceabstract(String contestresourceabstract) {
        this.contestresourceabstract = contestresourceabstract == null ? null : contestresourceabstract.trim();
    }

    public Integer getContestid() {
        return contestid;
    }

    public void setContestid(Integer contestid) {
        this.contestid = contestid;
    }
}