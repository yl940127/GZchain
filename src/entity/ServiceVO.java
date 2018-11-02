package entity;

import java.io.Serializable;
import java.sql.Date;

public class ServiceVO implements Serializable {
	private static final long serialVersionUID = 1L;

	private String serviceid = null;

    private String servicejson = null;

    private String guideid = null;
    
    private String serviceStatus = null;

    private String countryId = null;
    
    private String countryName = null;
    
    private String provinceId = null;
    
    private String provinceName = null;
    
    private String cityId = null;
    
    private String cityName = null;
    
    private String userId = null;
    
    private String realName = null;
    
    private String benefits = null;
    
    private int peopleCount = 0;
    
    private String startTime = null;
    
    private String endTime = null;
    
    private String requireText = null;
    
    private String voluntorismStatus = null;

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

	public String getServiceStatus() {
		return serviceStatus;
	}

	public void setServiceStatus(String serviceStatus) {
		this.serviceStatus = serviceStatus;
	}

	public String getCountryId() {
		return countryId;
	}

	public void setCountryId(String countryId) {
		this.countryId = countryId;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public String getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}

	public String getProvinceName() {
		return provinceName;
	}

	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}

	public String getCityId() {
		return cityId;
	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getBenefits() {
		return benefits;
	}

	public void setBenefits(String benefits) {
		this.benefits = benefits;
	}

	public int getPeopleCount() {
		return peopleCount;
	}

	public void setPeopleCount(int peopleCount) {
		this.peopleCount = peopleCount;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getRequireText() {
		return requireText;
	}

	public void setRequireText(String requireText) {
		this.requireText = requireText;
	}

	public String getVoluntorismStatus() {
		return voluntorismStatus;
	}

	public void setVoluntorismStatus(String voluntorismStatus) {
		this.voluntorismStatus = voluntorismStatus;
	}
    
    
    
}
