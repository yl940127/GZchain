package dao;


import entity.UsersDTO;

import java.util.List;

public interface FriendDao {
	/**
	 * 找到当前用户的朋友
	 * @param userid
	 * @return
	 */
	List<UsersDTO> findFriendsByUserId(Long userid);

}
