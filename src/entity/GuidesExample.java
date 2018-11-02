package entity;

import java.util.HashMap;
import java.util.Map;

public class GuidesExample {
	private String guideid = null;

    private String countryid = null;

    private String provinceid = null;

    private String cityid = null;

    private String address = null;

    private String userid = null;

    private String introduce = null;

	public String getGuideid() {
		return guideid;
	}

	public void setGuideid(String guideid) {
		this.guideid = guideid;
	}

	public String getCountryid() {
		return countryid;
	}

	public void setCountryid(String countryid) {
		this.countryid = countryid;
	}

	public String getProvinceid() {
		return provinceid;
	}

	public void setProvinceid(String provinceid) {
		this.provinceid = provinceid;
	}

	public String getCityid() {
		return cityid;
	}

	public void setCityid(String cityid) {
		this.cityid = cityid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
    
	public Map<String, Object> getExample() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("countryid", countryid);
		map.put("provinceid",  provinceid);
		map.put("cityid", cityid);
	    map.put("address", address);
	    map.put("userid", userid);
	    map.put("introduce", introduce);

		return map;
	}
}
