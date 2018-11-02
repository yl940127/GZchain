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
