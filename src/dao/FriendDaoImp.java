package dao;

import entity.FriendVO;
import entity.UsersDTO;
import jdbc.Converter;
import jdbc.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**找到当前用户的朋友
 * @author sxl
 * @create 2018-11-11 21:37
 **/

public class FriendDaoImp implements FriendDao {
    @Override
    public List<UsersDTO> findFriendsByUserId(Long userid) {
        //获取连接
        Connection con = JDBCUtil.getConnection();
        ResultSet rs = null;
        List<FriendVO> list = new ArrayList<>();

        //预编译
        PreparedStatement pstmt = null;
        String sql = "SELECT * FROM users WHERE userId IN (select relation_userId from friend where user_id =? AND relationStatus = 1)";
        List<UsersDTO>users = new ArrayList<>();
        try {
//            pstmt.execute(sql);
            pstmt = con.prepareStatement(sql);
            // 传参
            pstmt.setObject(1,userid);
            rs = pstmt.executeQuery();
            while (rs.next()){
                users.add(Converter.convertToUsersDTO(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(rs, pstmt, con);
        }

        return users;
    }
}
