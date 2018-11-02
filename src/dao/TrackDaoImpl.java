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
import entity.TrackDTO;
import entity.TrackExample;

public class TrackDaoImpl implements TrackDao {

	@Override
	public int countBySituation(TrackExample example) {
		Map<String, Object> map = example.getExample();
		String sql = "select count(*) from track where 1";
		
		Set<String> keySet = map.keySet();
		for(Iterator iter = keySet.iterator(); iter.hasNext();)
		{
			String key = (String)iter.next();
			String value = (String)map.get(key);
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
	public int deleteTrack(TrackDTO trackDTO) {
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "delete from track where trackId=?";
		int result = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setObject(1, trackDTO.getTrackid());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return result;
	}

	@Override
	public int insert(TrackDTO trackDTO) {
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "insert into track values(?,?,?,?,?,?,?)";
		int result = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setObject(1, trackDTO.hashCode());
			pstmt.setObject(2, trackDTO.getPublictime());
			pstmt.setObject(3, trackDTO.getContent());
			pstmt.setObject(4, trackDTO.getTrackimgurl());
			pstmt.setObject(5, trackDTO.getLocation());
			pstmt.setObject(6, trackDTO.getThumbupcount());
			pstmt.setObject(7, trackDTO.getUserid());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return result;
	}

	@Override
	public List<TrackDTO> selectBySituation(TrackExample example) {
		Map<String, Object> map = example.getExample();
		String sql = "select * from track where 1";
		
		Set<String> keySet = map.keySet();
		for(Iterator iter = keySet.iterator(); iter.hasNext();)
		{
			String key = (String)iter.next();
			String value = (String)map.get(key);
			if(value != null) {
				sql += " and "+key+"='"+value+"'";
			}
		}
		sql += ";";
		
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<TrackDTO> list = new ArrayList<TrackDTO>();
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TrackDTO ttrack = Converter.convertToTrackDTO(rs);
				list.add(ttrack);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return list;
	}

	@Override
	public TrackDTO selectByPrimaryKey(String trackid) {
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from track where trackId=?";
		TrackDTO track = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setObject(1, trackid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				track = Converter.convertToTrackDTO(rs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return track;
	}

	@Override
	public int updateBySituation(TrackDTO trackDTO, TrackExample example) {
		Map<String, Object> map = example.getExample();
		String sql = "update track set trackId='"+trackDTO.getTrackid()+"',";
		
		Set<String> keySet = map.keySet();
		for(Iterator iter = keySet.iterator(); iter.hasNext();)
		{
			String key = (String)iter.next();
			String value = (String)map.get(key);
			if(value != null) {
				sql += " "+key+"='"+value+"'";
			}
		}
		sql += " where trackId='"+trackDTO.getTrackid()+"'";
		
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
	public List<TrackDTO> likeBySituation(TrackExample example) {
		Map<String, Object> map = example.getExample();
		String sql = "select * from track where 1=2";
		
		Set<String> keySet = map.keySet();
		for(Iterator iter = keySet.iterator(); iter.hasNext();)
		{
			String key = (String)iter.next();
			String value = (String)map.get(key);
			if(value != null) {
				sql += " or "+key+" like '%"+value+"%'";
			}
		}
		
		//debug
		System.out.println(sql);
		//end
		
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<TrackDTO> list = new ArrayList<TrackDTO>();
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TrackDTO ttrack = Converter.convertToTrackDTO(rs);
				list.add(ttrack);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return list;
	}

}
