package entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @author 
 */
public class TrackDTO implements Serializable {
    private String trackid;

    private Date publictime;

    private String content;

    private String trackimgurl;

    private String location;

    private Integer thumbupcount;

    private Long userid;

    private static final long serialVersionUID = 1L;

    public String getTrackid() {
        return trackid;
    }

    public void setTrackid(String trackid) {
        this.trackid = trackid;
    }

    public Date getPublictime() {
        return publictime;
    }

    public void setPublictime(Date publictime) {
        this.publictime = publictime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTrackimgurl() {
        return trackimgurl;
    }

    public void setTrackimgurl(String trackimgurl) {
        this.trackimgurl = trackimgurl;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Integer getThumbupcount() {
        return thumbupcount;
    }

    public void setThumbupcount(Integer thumbupcount) {
        this.thumbupcount = thumbupcount;
    }

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
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
        TrackDTO other = (TrackDTO) that;
        return (this.getTrackid() == null ? other.getTrackid() == null : this.getTrackid().equals(other.getTrackid()))
            && (this.getPublictime() == null ? other.getPublictime() == null : this.getPublictime().equals(other.getPublictime()))
            && (this.getContent() == null ? other.getContent() == null : this.getContent().equals(other.getContent()))
            && (this.getTrackimgurl() == null ? other.getTrackimgurl() == null : this.getTrackimgurl().equals(other.getTrackimgurl()))
            && (this.getLocation() == null ? other.getLocation() == null : this.getLocation().equals(other.getLocation()))
            && (this.getThumbupcount() == null ? other.getThumbupcount() == null : this.getThumbupcount().equals(other.getThumbupcount()))
            && (this.getUserid() == null ? other.getUserid() == null : this.getUserid().equals(other.getUserid()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getTrackid() == null) ? 0 : getTrackid().hashCode());
        result = prime * result + ((getPublictime() == null) ? 0 : getPublictime().hashCode());
        result = prime * result + ((getContent() == null) ? 0 : getContent().hashCode());
        result = prime * result + ((getTrackimgurl() == null) ? 0 : getTrackimgurl().hashCode());
        result = prime * result + ((getLocation() == null) ? 0 : getLocation().hashCode());
        result = prime * result + ((getThumbupcount() == null) ? 0 : getThumbupcount().hashCode());
        result = prime * result + ((getUserid() == null) ? 0 : getUserid().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", trackid=").append(trackid);
        sb.append(", publictime=").append(publictime);
        sb.append(", content=").append(content);
        sb.append(", trackimgurl=").append(trackimgurl);
        sb.append(", location=").append(location);
        sb.append(", thumbupcount=").append(thumbupcount);
        sb.append(", userid=").append(userid);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}