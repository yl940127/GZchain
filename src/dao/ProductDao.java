package dao;

import entity.ProductVO;

import java.sql.SQLException;
import java.util.List;

public interface ProductDao {
    /**
     * 查找出商品的全部信息
     * @return
     */
    List<ProductVO> findAll()throws SQLException;
}
