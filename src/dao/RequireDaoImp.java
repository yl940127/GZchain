package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jdbc.JDBCUtil;
import entity.RequireServiceDTO;

public class RequireDaoImp implements RequireDao{

	@Override
	public int insert(RequireServiceDTO dto) {
		// TODO Auto-generated method stub
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "insert into servicerequire(userId, serviceId, requireId) values(?,?,?)";
		int result = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setObject(1, dto.getUserId());
			pstmt.setObject(2, dto.getServiceId());
			pstmt.setObject(3, dto.getRequireId());
		
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, con);
		}
		
		
		return 0;
	}

}
