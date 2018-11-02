package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import oracle.net.aso.l;
import jdbc.JDBCUtil;
import util.SqlUtil;
import entity.CityDTO;
import entity.CityExample;

public class CityDaoImp implements CityDao{
	
	@Override
	public List<CityDTO> list(CityExample cityExample) throws SQLException {
		// TODO Auto-generated method stub
		Map<String, Object> map = cityExample.getExample();
		
		String sql = "select * from city where 1";
		
		sql = SqlUtil.addWhereSql(sql, map);
		
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<CityDTO> cities = new ArrayList<CityDTO>();
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			CityDTO dto = new CityDTO();
			dto.setCityid(rs.getString(1));
			dto.setCityname(rs.getString(2));
			dto.setCountryid(rs.getString(3));
			dto.setProvinceid(rs.getString(4));
			cities.add(dto);
		}
		
		return cities;
	}
	
	

}
