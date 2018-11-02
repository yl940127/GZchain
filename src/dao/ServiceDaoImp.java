package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import jdbc.JDBCUtil;

import org.omg.CORBA.PUBLIC_MEMBER;

import com.sun.prism.paint.Stop;

import util.SqlUtil;
import entity.ServiceDTO;
import entity.ServiceExample;
import entity.ServiceVO;

public class ServiceDaoImp implements ServiceDao{

	@Override
	public List<ServiceVO> list(ServiceExample serviceExample) throws SQLException {
		// TODO Auto-generated method stub
		Map<String, Object> map = serviceExample.getExample();
		
		String sql = "select * from listserviceview1 where 1";
		
		sql = SqlUtil.addWhereSql(sql, map);
		
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ServiceVO> serviceVOs = new ArrayList<ServiceVO>();
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		 
		while (rs.next()) {
			ServiceVO dto = new ServiceVO();
			dto.setServiceid(rs.getString(1));
			dto.setServicejson(rs.getString(2));
			dto.setGuideid(rs.getString(3));
			dto.setServiceStatus(rs.getString(4));
			dto.setCountryId(rs.getString(5));
			dto.setProvinceId(rs.getString(6));
			dto.setCityId(rs.getString(7));
			dto.setUserId(rs.getString(9));
			dto.setRealName(rs.getString(10));
			dto.setBenefits(rs.getString(11));
			dto.setPeopleCount(rs.getInt(12));
			dto.setStartTime(rs.getString(13));
			dto.setEndTime(rs.getString(14));
			dto.setRequireText(rs.getString(15));
			serviceVOs.add(dto);
		}
		return serviceVOs;
	}

	@Override
	public int insert(ServiceDTO dto) {
		// TODO Auto-generated method stub
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "insert into service(serviceId, serviceJson, guideId, status, cost) values(?,?,?,?,?);";
		int result = 0;
		
		try {
		pstmt = con.prepareStatement(sql);
		pstmt.setObject(1, dto.getServiceid());
			pstmt.setObject(2, dto.getServicejson());
			pstmt.setObject(3, dto.getGuideid());
			pstmt.setObject(4, dto.getStatus());
			pstmt.setObject(5, dto.getCost());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		return result;
	}

}
