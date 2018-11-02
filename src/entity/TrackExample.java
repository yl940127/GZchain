package entity;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class TrackExample {
	
	private Date publictime = null;

    private String content = null;

    private String trackimgurl = null;

    private String location = null;

    private Integer thumbupcount = null;

    private String userid = null;

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

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
    
    public Map<String, Object> getExample() {
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("publictime", publictime);
    	map.put("content", content);
    	map.put("trackimgurl", trackimgurl);
    	map.put("location", location);
    	map.put("thumbupcount", thumbupcount);
    	map.put("userid", userid);
        
    	return map;
    }
}
