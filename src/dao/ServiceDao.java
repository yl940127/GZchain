package dao;

import java.sql.SQLException;
import java.util.List;

import entity.ServiceDTO;
import entity.ServiceExample;
import entity.ServiceVO;

public interface ServiceDao {
	public List<ServiceVO> list(ServiceExample serviceExample) throws SQLException; 
	
	public int insert(ServiceDTO dto);
}
