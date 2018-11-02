package dao;

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
    public List<UsersDTO> findById(Long id) throws SQLException {
        Connection con = JDBCUtil.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from users u WHERE u.id in (SELECT user_id from share WHERE product_id = ?)";

        pstmt = con.prepareStatement(sql);
        pstmt.setLong(1,id);
        rs = pstmt.executeQuery();
        List<UsersDTO>users = new ArrayList<>();
        while (rs.next()){
            UsersDTO user =Converter.convertToUsersDTO(rs);
            users.add(user);

        }
        return users;

    }

}
