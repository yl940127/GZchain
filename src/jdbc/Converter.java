package jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import entity.CityDTO;
import entity.GuidesDTO;
import entity.TrackDTO;
import entity.UsersDTO;

public class Converter {
	
	public static UsersDTO convertToUsersDTO(ResultSet rs) throws SQLException {
		UsersDTO user = new UsersDTO();
		user.setUserid(rs.getString("userId"));
		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setRealname(rs.getString("realName"));
		user.setEmail(rs.getString("email"));
		user.setTelnum(rs.getString("telNum"));
		user.setIdcard(rs.getString("idCard"));
		user.setBirthday(rs.getDate("birthday"));
		user.setEducation(rs.getString("education"));
		user.setGender(rs.getString("gender"));
		user.setHeadimgurl(rs.getString("headImgUrl"));
		
		return user;
	}
	
	public static GuidesDTO converttoGuidesDTO(ResultSet rs) throws SQLException {
		GuidesDTO guide = new GuidesDTO();
		guide.setGuideid(rs.getString("guideId"));
		guide.setIntroduce(rs.getString("introduce"));
		guide.setCountryid(rs.getString("countryId"));
		guide.setProvinceid(rs.getString("provinceId"));
		guide.setCityid(rs.getString("cityId"));
		guide.setAddress(rs.getString("address"));
		guide.setUserid(rs.getString("userId"));
		
		return guide;
	}
	
	public static Map<String, Object> convertToGuideDetail(ResultSet rs) throws SQLException {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userid", rs.getString("userid"));
		map.put("username", rs.getString("username"));
		map.put("password", rs.getString("password"));
		map.put("realName", rs.getString("realName"));
		map.put("email", rs.getString("email"));
		map.put("telNum", rs.getString("telNum"));
		map.put("idCard", rs.getString("idCard"));
		map.put("birthday", rs.getString("birthday"));
		map.put("education", rs.getString("education"));
		map.put("sex", rs.getString("sex"));
		map.put("headImgUrl", rs.getString("headImgUrl"));
		map.put("guideId", rs.getString("guideId"));
		map.put("introduce", rs.getString("introduce"));
		map.put("countryName", rs.getString("countryName"));
		map.put("provinceName", rs.getString("provinceName"));
		map.put("cityName", rs.getString("cityName"));
		map.put("address", rs.getString("address"));
		
		return map;
	}
	
	public static TrackDTO convertToTrackDTO(ResultSet rs) throws SQLException {
		TrackDTO track = new TrackDTO();
		track.setTrackid(rs.getString("trackId"));
		track.setPublictime(rs.getDate("publicTime"));
		track.setContent(rs.getString("content"));
		track.setTrackimgurl(rs.getString("trackImgUrl"));
		track.setLocation(rs.getString("location"));
		track.setThumbupcount(rs.getInt("thumbUpCount"));
		track.setUserid(rs.getString("userId"));
		
		return track;
	}
	
	
}
