package dao;

import java.sql.SQLException;
import java.util.List;

import entity.CityDTO;
import entity.CityExample;
import entity.ServiceDTO;

public interface CityDao {
	public List<CityDTO> list(CityExample cityExample) throws SQLException;
	
}
