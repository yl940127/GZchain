package dao;

import entity.UsersDTO;

import java.util.List;

public interface UserShareDao {
    /**
     * 通过
     * @param id
     * @return
     */
    public List<UsersDTO> findByShareId(Long id);
}
