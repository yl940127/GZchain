package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import jdbc.Converter;
import jdbc.JDBCUtil;
import entity.GuidesDTO;
import entity.GuidesExample;
import entity.UsersDTO;

public class GuideDaoImpl implements GuideDao {

	@Override
	public int countBySituation(GuidesExample example) {
		Map<String, Object> map = example.getExample();
		String sql = "select count(*) from guides where 1";
		
		Set<String> keySet = map.keySet();
		for(Iterator iter = keySet.iterator(); iter.hasNext();) {
			String key = (String) iter.next();
			String value = (String) map.get(key);
			if(value != null) {
				sql += " and "+key+"='"+value+"'";
			}
		}
		sql += ";";
		
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
 		return result;
	}

	@Override
	public int deleteGuide(GuidesDTO guidesDTO) {
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "delete from guides where guideId=?";
		int result = -1;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setObject(0, guidesDTO.getGuideid());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return result;
	}

	@Override
	public int insert(GuidesDTO guidesDTO) {
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "insert into guides values(?,?,?,?,?,?,?)";
		int result = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setObject(1,guidesDTO.hashCode());
			pstmt.setObject(2,guidesDTO.getIntroduce());
			pstmt.setObject(3,guidesDTO.getCountryid());
			pstmt.setObject(4,guidesDTO.getProvinceid());
			pstmt.setObject(5,guidesDTO.getCityid());
			pstmt.setObject(6,guidesDTO.getAddress());
			pstmt.setObject(7,guidesDTO.getUserid());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return result;
	}

	@Override
	public List<GuidesDTO> selectBySituation(GuidesExample example) {
		Map<String, Object> map = example.getExample();
		String sql = "select * from guides where 1";
		
		Set<String> keySet = map.keySet();
		for(Iterator iter = keySet.iterator(); iter.hasNext();)
		{
			String key = (String) iter.next();
			String value = (String) map.get(key);
			if(value != null) {
				sql += " and "+key+"='"+value+"'";
			}
		}
		sql += ";";
		
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<GuidesDTO> list = new ArrayList<GuidesDTO>();
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				GuidesDTO tguide = Converter.converttoGuidesDTO(rs);
				list.add(tguide);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return list;
	}

	@Override
	public GuidesDTO selectByPrimaryKey(String guideid) {
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select* from guides where guideId=?";
		GuidesDTO guide = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setObject(1, guideid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				guide = Converter.converttoGuidesDTO(rs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return guide;
	}

	@Override
	public int updateBySituation(GuidesDTO guidesDTO, GuidesExample example) {
		Map<String, Object> map = example.getExample();
		String sql = "update guides set guideId='"+guidesDTO.getGuideid()+"',";
		
		Set<String> keySet = map.keySet();
		for(Iterator iter = keySet.iterator(); iter.hasNext();) {
			String key = (String)iter.next();
			String value = (String)map.get(key);
			if(value != null) {
				sql += " "+key+"='"+value+"'";
			}
		}
		sql += " where guideId='"+guidesDTO.getGuideid()+"'";
		
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return result;
	}

	@Override
	public Map<String, Object> getGuideDetail(String guideid) {
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from guidedetail where guideId=?";
		Map<String, Object> result = null;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setObject(1, guideid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = Converter.convertToGuideDetail(rs);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return result;
	}

}
