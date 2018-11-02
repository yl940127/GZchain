package dao;

import entity.ProductVO;
import jdbc.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShareDaoImp implements ShareDao {
    @Override
    public List<ProductVO> findById(Long id) throws SQLException {

        return null;
    }

}
