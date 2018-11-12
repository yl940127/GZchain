package dao;

import entity.FriendVO;
import entity.UsersDTO;
import entity.UsersExample;

import java.util.List;

public interface friendDao {
	List<FriendVO> findAllFriendsInfoByPrimaryKey(Long userid);
	List<Long> findAllFriendsIdByPrimaryKey(Long userid);

}
