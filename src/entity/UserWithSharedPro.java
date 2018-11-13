package entity;

import java.util.List;

/**
 * @author sxl
 * @create 2018-11-12 15:06
 **/

public class UserWithSharedPro {
    private UsersDTO user;
    private List<ProductVO> sharedProList;

    public UsersDTO getUser() {
        return user;
    }

    public void setUser(UsersDTO user) {
        this.user = user;
    }

    public List<ProductVO> getSharedProList() {
        return sharedProList;
    }

    public void setSharedProList(List<ProductVO> sharedProList) {
        this.sharedProList = sharedProList;
    }
}
