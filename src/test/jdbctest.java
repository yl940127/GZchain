package test;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.junit.Test;

import dao.TrackDaoImpl;
import dao.userDaoImpl;
import entity.TrackDTO;
import entity.TrackExample;
import entity.UsersDTO;
import entity.UsersExample;

public class jdbctest {

	@Test
	public void test() {
		userDaoImpl userDaoImpl = new userDaoImpl();
//		UsersDTO user = userDaoImpl.selectByPrimartyKey("123123");
		UsersExample example = new UsersExample();
		example.setUsername("sizeof");
		example.setPassword("123456");
		List<UsersDTO> list = userDaoImpl.selectBySituation(example);
		System.out.println(list.get(0));
	}
	
	@Test
	public void testJson() {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("location", "1");
		jsonObject.put("userId", "asd");
		System.out.println(jsonObject);
		
		
		TrackExample example = new TrackExample();
//		example.setLocation(jsonObject.getString("location"));
		example.setUserid(jsonObject.getString("userId"));
		
		TrackDaoImpl trackDaoImpl = new TrackDaoImpl();
		List<TrackDTO> list = trackDaoImpl.selectBySituation(example);
		
		JSONArray jsonArray = new JSONArray();
		for(TrackDTO tt : list) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("trackId", tt.getTrackid());
			map.put("publicTime", tt.getPublictime().toString());
			map.put("trackImgUrl", tt.getTrackimgurl());
			map.put("location", tt.getLocation());
			map.put("thumbUpCount", tt.getThumbupcount());
			map.put("userId", tt.getUserid());
			JSONObject jo = JSONObject.fromObject(map);
			jsonArray.add(jo);
		}
		
		System.out.println(jsonArray);
	}

}
