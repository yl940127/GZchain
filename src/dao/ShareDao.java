package dao;

import entity.ProductVO;

import java.sql.SQLException;
import java.util.List;

public interface ShareDao {

    /**
     * 根据id查找商品
     * @param id
     * @return
     * @throws SQLException
     */
    public List<ProductVO> findById(Long id)throws SQLException;
}
