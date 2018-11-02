package entity;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;

public class CityExample {
	private String cityId = null;
	
	private String cityName = null;
	
	private String provinceId = null;
	
	private String countryId = null;

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
	
	public Map<String, Object> getExample() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cityId", cityId);
		map.put("cityName", cityName);
		map.put("provinceId", provinceId);
		map.put("countryId", countryId);
		
		return map;
	}
}
