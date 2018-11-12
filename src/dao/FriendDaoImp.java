package dao;

import entity.FriendVO;
import jdbc.Converter;
import jdbc.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author sxl
 * @create 2018-11-11 21:37
 **/

public class FriendDaoImp implements friendDao {
    @Override
    public List<FriendVO> findAllFriendsInfoByPrimaryKey(Long userid) {
        //获取连接
        Connection con = JDBCUtil.getConnection();
        ResultSet rs = null;
//        List<Long> list = new ArrayList<Long>();
        List<FriendVO> list = new ArrayList<>();

        //预编译
        PreparedStatement pstmt = null;
        String sql = "select * from friend where user_id =?";
        FriendVO friendVO = null;
        try {
//            pstmt.execute(sql);
            pstmt = con.prepareStatement(sql);
            // 传参
            pstmt.setObject(1,userid);
            rs = pstmt.executeQuery();
            while (rs.next()){
                friendVO = Converter.convertToFriendVO(rs);
                list.add(friendVO);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(rs, pstmt, con);
        }

        return list;
    }

    @Override
    public List<Long> findAllFriendsIdByPrimaryKey(Long userid) {
        Connection con = JDBCUtil.getConnection();
        ResultSet rs = null;
        List<Long> listIds = new ArrayList<>();

        //准备sql语句，与数据库进行交互
        PreparedStatement pstmt = null;
        String sql = "select relation_userId from friend where user_id=?";

        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setObject(1,userid);
            rs = pstmt.executeQuery();
            while (rs.next()){
                listIds.add(rs.getLong("relation_userId"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(rs,pstmt,con);
        }
        return listIds;
    }
}
