package dao;

import entity.ProductVO;
import entity.UsersDTO;

import java.sql.SQLException;
import java.util.List;

public interface ShareDao {

    /**
     * 根据用户id查找用户的朋友
     * @param id 当前用户
     * @return
     * @throws SQLException
     */
    public List<UsersDTO> findById(Long id)throws SQLException;

    /**
     * 添加记录到分享表
     * @param user
     * @param product
     */
    public int insertShare(UsersDTO user, ProductVO product,long preUserId)throws SQLException;

    /**
     * 根据用户id查找商品信息
     * @param id
     * @return
     */
    public List<ProductVO> findProductByuserId(Long id);
}
