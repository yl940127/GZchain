package entity;

import java.math.BigDecimal;
import java.util.Date;
import constant.PlaceEnum;

public class ProductVO {
    /**
     * 商品id
     */
    private Long id;
    /**
     * 商品名称
     */
    private String name;
    /**
     * 价格
     */
    private BigDecimal price;
    /**
     * 商品状态
     */
    private PlaceEnum.ProductStatus status;
    /**
     * 商品库存总量
     */
    private Integer storeNum;
    /**
     * 商品销售总量
     */
    private Integer saleNum;

    /**
     * 商品图片url
     */
    private String imageUrls;

    /**
     * 商品总评论数
     */
    private Long commentNum;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public PlaceEnum.ProductStatus getStatus() {
        return status;
    }

    public void setStatus(PlaceEnum.ProductStatus status) {
        this.status = status;
    }

    public Integer getStoreNum() {
        return storeNum;
    }

    public void setStoreNum(Integer storeNum) {
        this.storeNum = storeNum;
    }

    public Integer getSaleNum() {
        return saleNum;
    }

    public void setSaleNum(Integer saleNum) {
        this.saleNum = saleNum;
    }

    public String getImageUrls() {
        return imageUrls;
    }

    public void setImageUrls(String imageUrls) {
        this.imageUrls = imageUrls;
    }

    public Long getCommentNum() {
        return commentNum;
    }

    public void setCommentNum(Long commentNum) {
        this.commentNum = commentNum;
    }
}
