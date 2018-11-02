package entity;

public class UserShareVO {
    /**
     * 用户分享表id
     */
    private Long id;
    /**
     * 用户id
     */
    private Long user_id;
    /**
     * 分享表
     */
    private Long share_id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public Long getShare_id() {
        return share_id;
    }

    public void setShare_id(Long share_id) {
        this.share_id = share_id;
    }
}
