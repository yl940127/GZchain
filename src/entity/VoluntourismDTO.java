package entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @author 
 */
public class VoluntourismDTO implements Serializable {
    private String voluntorismid;

    private String introduce;

    private String requiretext;

    private Date requirestarttime;

    private Date requireendtime;

    private String benefits;

    private Integer peoplecount;

    private String guideid;
    
    private String status;

    private static final long serialVersionUID = 1L;

    public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getVoluntorismid() {
        return voluntorismid;
    }

    public void setVoluntorismid(String voluntorismid) {
        this.voluntorismid = voluntorismid;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getRequiretext() {
        return requiretext;
    }

    public void setRequiretext(String requiretext) {
        this.requiretext = requiretext;
    }

    public Date getRequirestarttime() {
        return requirestarttime;
    }

    public void setRequirestarttime(Date requirestarttime) {
        this.requirestarttime = requirestarttime;
    }

    public Date getRequireendtime() {
        return requireendtime;
    }

    public void setRequireendtime(Date requireendtime) {
        this.requireendtime = requireendtime;
    }

    public String getBenefits() {
        return benefits;
    }

    public void setBenefits(String benefits) {
        this.benefits = benefits;
    }

    public Integer getPeoplecount() {
        return peoplecount;
    }

    public void setPeoplecount(Integer peoplecount) {
        this.peoplecount = peoplecount;
    }

    public String getGuideid() {
        return guideid;
    }

    public void setGuideid(String guideid) {
        this.guideid = guideid;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        VoluntourismDTO other = (VoluntourismDTO) that;
        return (this.getVoluntorismid() == null ? other.getVoluntorismid() == null : this.getVoluntorismid().equals(other.getVoluntorismid()))
            && (this.getIntroduce() == null ? other.getIntroduce() == null : this.getIntroduce().equals(other.getIntroduce()))
            && (this.getRequiretext() == null ? other.getRequiretext() == null : this.getRequiretext().equals(other.getRequiretext()))
            && (this.getRequirestarttime() == null ? other.getRequirestarttime() == null : this.getRequirestarttime().equals(other.getRequirestarttime()))
            && (this.getRequireendtime() == null ? other.getRequireendtime() == null : this.getRequireendtime().equals(other.getRequireendtime()))
            && (this.getBenefits() == null ? other.getBenefits() == null : this.getBenefits().equals(other.getBenefits()))
            && (this.getPeoplecount() == null ? other.getPeoplecount() == null : this.getPeoplecount().equals(other.getPeoplecount()))
            && (this.getGuideid() == null ? other.getGuideid() == null : this.getGuideid().equals(other.getGuideid()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getVoluntorismid() == null) ? 0 : getVoluntorismid().hashCode());
        result = prime * result + ((getIntroduce() == null) ? 0 : getIntroduce().hashCode());
        result = prime * result + ((getRequiretext() == null) ? 0 : getRequiretext().hashCode());
        result = prime * result + ((getRequirestarttime() == null) ? 0 : getRequirestarttime().hashCode());
        result = prime * result + ((getRequireendtime() == null) ? 0 : getRequireendtime().hashCode());
        result = prime * result + ((getBenefits() == null) ? 0 : getBenefits().hashCode());
        result = prime * result + ((getPeoplecount() == null) ? 0 : getPeoplecount().hashCode());
        result = prime * result + ((getGuideid() == null) ? 0 : getGuideid().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", voluntorismid=").append(voluntorismid);
        sb.append(", introduce=").append(introduce);
        sb.append(", requiretext=").append(requiretext);
        sb.append(", requirestarttime=").append(requirestarttime);
        sb.append(", requireendtime=").append(requireendtime);
        sb.append(", benefits=").append(benefits);
        sb.append(", peoplecount=").append(peoplecount);
        sb.append(", guideid=").append(guideid);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}