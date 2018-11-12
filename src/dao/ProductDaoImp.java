package dao;

import constant.PlaceEnum;
import entity.ProductVO;
import jdbc.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 获取全部商品
 */
public class ProductDaoImp implements ProductDao {
    @Override
    public List<ProductVO> findAll() throws SQLException {

        Connection con = JDBCUtil.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from product";

        pstmt = con.prepareStatement(sql);
        rs = pstmt.executeQuery();

        List <ProductVO> products = new ArrayList<>();
        while (rs.next()){
            ProductVO product = new ProductVO();
            product.setId(rs.getLong("id"));
            product.setName(rs.getString("NAME"));
            product.setPrice(rs.getBigDecimal("price"));
            product.setStatus(PlaceEnum.ProductStatus.ON_SALE);
            product.setStoreNum(rs.getInt("store_num"));
            product.setSaleNum(rs.getInt("sale_num"));
            product.setImageUrls(rs.getString("image_urls"));
            product.setCommentNum(rs.getLong("comment_num"));
            products.add(product);
        }
        return products;
    }



    @Override
    public ProductVO findProductById(Long pro_id) throws SQLException {

        Connection con = JDBCUtil.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ProductVO product = new ProductVO();


        String sql = "select * from product where id=?";

        pstmt = con.prepareStatement(sql);
        pstmt.setObject(1,pro_id);
        rs = pstmt.executeQuery();

        List <ProductVO> products = new ArrayList<>();
        while (rs.next()){
            product.setId(rs.getLong("id"));
            product.setName(rs.getString("NAME"));
            product.setPrice(rs.getBigDecimal("price"));
            product.setStatus(PlaceEnum.ProductStatus.ON_SALE);
            product.setStoreNum(rs.getInt("store_num"));
            product.setSaleNum(rs.getInt("sale_num"));
            product.setImageUrls(rs.getString("image_urls"));
            product.setCommentNum(rs.getLong("comment_num"));
        }
        return product;
    }

}
