package dao;

import java.util.List;

import entity.UsersDTO;
import entity.UsersExample;

public interface userDao {
	int countBySituation(UsersExample example);
	int deleteUser(UsersDTO userDTO);
	int insert(UsersDTO userDTO);
	List<UsersDTO> selectBySituation(UsersExample example);
	UsersDTO selectByPrimartyKey(String userid);
	int updateBySituation(UsersDTO userDTO, UsersExample example);
}
