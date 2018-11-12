package entity;

public class FriendVO {
    /**
     * 朋友表id
     */
    private Long id;

    /**
     * 用户id
     * @return
     */
    private Long user_id;
    /**
     * 上一个用户的id
     */
    private Long relation_userId;

    private Long relationStatus;


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

    public Long getRelation_userId() {
        return relation_userId;
    }

    public void setRelation_userId(Long relation_userId) {
        this.relation_userId = relation_userId;
    }

    public Long getRelationStatus() {
        return relationStatus;
    }

    public void setRelationStatus(Long relationStatus) {
        this.relationStatus = relationStatus;
    }
}
