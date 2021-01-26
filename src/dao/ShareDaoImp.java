package dao;

import constant.PlaceEnum;
import entity.ProductVO;
import entity.UsersDTO;
import jdbc.Converter;
import jdbc.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ShareDaoImp implements ShareDao {
    @Override
    /**
     * 根据用户id查找用户的朋友
     */
    public List<UsersDTO> findById(Long id) throws SQLException {
        Connection con = JDBCUtil.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from users u WHERE u.id in (select relation_userId from friend where user_id =? AND relationStatus = 1)";

        pstmt = con.prepareStatement(sql);
        pstmt.setLong(1,id);
        rs = pstmt.executeQuery();
        List<UsersDTO>users = new ArrayList<>();
        while (rs.next()){
            UsersDTO user =Converter.convertToUsersDTO(rs);
            users.add(user);

        }
        JDBCUtil.close(rs, pstmt, con);
        return users;

    }

    @Override
    /**
     * 添加记录到分享表
     * @param user
     * @param product
     */
    public int insertShare(UsersDTO usersDTO, ProductVO productVO,long preUserId) throws SQLException{
        Connection con = JDBCUtil.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "insert into share(product_id, user_id, preUser_id) values(?,?,?)";
        int result = 0;
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setObject(1,productVO.getId());
            pstmt.setObject(2,usersDTO.getUserid());
            pstmt.setLong(3,preUserId);
            result = pstmt.executeUpdate();
        } catch (Exception e) {
             e.printStackTrace();
        } finally {
             JDBCUtil.close(rs, pstmt, con);
        }

        return result;
    }

    @Override
    public List<ProductVO> findProductByuserId(Long id) {
        Connection con = JDBCUtil.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from product p where p.id in (select product_id from share where user_id =?) ";

        List <ProductVO> products = new ArrayList<>();
        try{
            pstmt = con.prepareStatement(sql);
            pstmt.setLong(1,id);
            rs = pstmt.executeQuery();
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

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            JDBCUtil.close(rs, pstmt, con);
        }

        return products;
    }

    // 根据分享商品ID和用户Id，直接将记录写入分享表中。
    public static int insertShare(long product_id, long user_id,long preUser_id) throws SQLException{
        Connection con = JDBCUtil.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "insert into share(product_id, user_id, preUser_id) values(?,?,?)";
        int result = 0;
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setObject(1,product_id);
            pstmt.setObject(2,user_id);
            pstmt.setLong(3,preUser_id);
            result = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(rs, pstmt, con);
        }
        return result;
    }

}
