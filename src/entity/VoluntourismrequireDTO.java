package entity;

import java.io.Serializable;

/**
 * @author 
 */
public class VoluntourismrequireDTO implements Serializable {
    private String requireid;

    private String voluntorismid;

    private String userid;

    private String state;

    private static final long serialVersionUID = 1L;

    public String getRequireid() {
        return requireid;
    }

    public void setRequireid(String requireid) {
        this.requireid = requireid;
    }

    public String getVoluntorismid() {
        return voluntorismid;
    }

    public void setVoluntorismid(String voluntorismid) {
        this.voluntorismid = voluntorismid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
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
        VoluntourismrequireDTO other = (VoluntourismrequireDTO) that;
        return (this.getRequireid() == null ? other.getRequireid() == null : this.getRequireid().equals(other.getRequireid()))
            && (this.getVoluntorismid() == null ? other.getVoluntorismid() == null : this.getVoluntorismid().equals(other.getVoluntorismid()))
            && (this.getUserid() == null ? other.getUserid() == null : this.getUserid().equals(other.getUserid()))
            && (this.getState() == null ? other.getState() == null : this.getState().equals(other.getState()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getRequireid() == null) ? 0 : getRequireid().hashCode());
        result = prime * result + ((getVoluntorismid() == null) ? 0 : getVoluntorismid().hashCode());
        result = prime * result + ((getUserid() == null) ? 0 : getUserid().hashCode());
        result = prime * result + ((getState() == null) ? 0 : getState().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", requireid=").append(requireid);
        sb.append(", voluntorismid=").append(voluntorismid);
        sb.append(", userid=").append(userid);
        sb.append(", state=").append(state);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}