package entity;

import java.io.Serializable;

/**
 * @author 
 */
public class ServiceDTO implements Serializable {
    private String serviceid;

    private String servicejson;

    private String guideid;
    
    private String status;
    
    private int cost;

    private static final long serialVersionUID = 1L;

    
    public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getServiceid() {
        return serviceid;
    }

    public void setServiceid(String serviceid) {
        this.serviceid = serviceid;
    }

    public String getServicejson() {
        return servicejson;
    }

    public void setServicejson(String servicejson) {
        this.servicejson = servicejson;
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
        ServiceDTO other = (ServiceDTO) that;
        return (this.getServiceid() == null ? other.getServiceid() == null : this.getServiceid().equals(other.getServiceid()))
            && (this.getServicejson() == null ? other.getServicejson() == null : this.getServicejson().equals(other.getServicejson()))
            && (this.getGuideid() == null ? other.getGuideid() == null : this.getGuideid().equals(other.getGuideid()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getServiceid() == null) ? 0 : getServiceid().hashCode());
        result = prime * result + ((getServicejson() == null) ? 0 : getServicejson().hashCode());
        result = prime * result + ((getGuideid() == null) ? 0 : getGuideid().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", serviceid=").append(serviceid);
        sb.append(", servicejson=").append(servicejson);
        sb.append(", guideid=").append(guideid);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}