package entity;

public class ShareVO {
    /**
     * 分享表id
     */
    private Long id;
    /**
     *商品id
     */
    private Long product_id;

    /**
     * 用户id
     * @return
     */
    private Long user_id;

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Long product_id) {
        this.product_id = product_id;
    }
}
