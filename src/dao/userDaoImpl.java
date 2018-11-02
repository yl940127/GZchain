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
import entity.UsersDTO;
import entity.UsersExample;

public class userDaoImpl implements userDao {

	@Override
	public int countBySituation(UsersExample example) {
		Map<String, Object> map = example.getExample();
		String sql = "select count(*) from users where 1";
		
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
	public int deleteUser(UsersDTO userDTO) {
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "delete from users where userid=?";
		int result = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setObject(1, userDTO.getUserid());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return result;
	}

	@Override
	public int insert(UsersDTO userDTO) {
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "insert into users(userId, username, password, realName, email, telNum, idCard, birthday, education, sex, headImgUrl) values(?,?,?,?,?,?,?,?,?,?,?)";
		int result = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setObject(1, userDTO.hashCode());
			pstmt.setObject(2, userDTO.getUsername());
			pstmt.setObject(3, userDTO.getPassword());
			pstmt.setObject(4, userDTO.getRealname());
			pstmt.setObject(5, userDTO.getEmail());
			pstmt.setObject(6, userDTO.getTelnum());
			pstmt.setObject(7, userDTO.getIdcard());
			pstmt.setObject(8, userDTO.getBirthday());
			pstmt.setObject(9, userDTO.getEducation());
			pstmt.setObject(10, userDTO.getGender());
			pstmt.setObject(11, userDTO.getHeadimgurl());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return result;
	}

	@Override
	public List<UsersDTO> selectBySituation(UsersExample example) {
		Map<String, Object> map = example.getExample();
		String sql = "select * from users where 1";
		
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
		List<UsersDTO> list = new ArrayList<UsersDTO>();
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				UsersDTO tuser = Converter.convertToUsersDTO(rs);
				list.add(tuser);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return list;
	}

	@Override
	public UsersDTO selectByPrimartyKey(Long userid) {
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from users where userId=?";
		UsersDTO user = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setObject(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				user = Converter.convertToUsersDTO(rs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return user;
	}

	@Override
	public int updateBySituation(UsersDTO userDTO, UsersExample example) {
		Map<String, Object> map = example.getExample();
		String sql = "update users set userId='"+userDTO.getUserid()+"',";
		
		Set<String> keySet = map.keySet();
		for(Iterator iter = keySet.iterator(); iter.hasNext();)
		{
			String key = (String)iter.next();
			String value = (String)map.get(key);
			if(value != null) {
				sql += " "+key+"='"+value+"'";
			}
		}
		sql += " where userId='"+userDTO.getUserid()+"'";
		
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

}
