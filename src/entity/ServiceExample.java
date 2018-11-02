package entity;

import java.util.HashMap;
import java.util.Map;

public class ServiceExample {
	private String serviceId = null;
	private String serviceJson = null;
	private String guideId = null;
	private String cityId = null;
	private String cityName = null;
	private String countryId = null;
	private String provinceId = null;
	private String status = null;
	private String userId = null;
	
	
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}
	public String getCountryId() {
		return countryId;
	}
	public void setCountryId(String countryId) {
		this.countryId = countryId;
	}
	public String getCityId() {
		return cityId;
	}
	public void setCityId(String cityId) {
		this.cityId = cityId;
	}
	public void setGuideId(String guideId) {
		this.guideId = guideId;
	}
	public String getServiceId() {
		return serviceId;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
	public String getServiceJson() {
		return serviceJson;
	}
	public void setServiceJson(String serviceJson) {
		this.serviceJson = serviceJson;
	}
	
	public String getGuideId() {
		return guideId;
	}
	
	
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public Map<String, Object> getExample() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("serviceId", serviceId);
		map.put("serviceJson", serviceJson);
		map.put("guideId", guideId);
		map.put("cityId", cityId);
		map.put("countryId", countryId);
		map.put("provinceId", provinceId);
		map.put("serviceStatus", status);
		return map;
	}
}
