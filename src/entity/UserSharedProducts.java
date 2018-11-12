package entity;

import java.util.List;

/**
 * @author sxl
 * @create 2018-11-12 15:06
 **/

public class UserSharedProducts {
    private UsersDTO userDTO;
    private List<ProductVO> productVOList;

    public UsersDTO getUserDTO() {
        return userDTO;
    }

    public void setUserDTO(UsersDTO userDTO) {
        this.userDTO = userDTO;
    }

    public List<ProductVO> getProductVOList() {
        return productVOList;
    }

    public void setProductVOList(List<ProductVO> productVOList) {
        this.productVOList = productVOList;
    }
}
