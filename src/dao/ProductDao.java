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

    /**
     * 根据商品id查找商品
     * @param pro_id
     * @return
     * @throws SQLException
     */
    ProductVO findProductById(Long pro_id)throws SQLException;
}
