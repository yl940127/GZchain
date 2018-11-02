package entity;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class CommentExample {
	
	private String commentid = null;

    private String content = null;

    private String userid = null;

    private String trackid = null;
    private static final long serialVersionUID = 1L;

    public String getCommentid() {
        return commentid;
    }

    public void setCommentid(String commentid) {
        this.commentid = commentid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getTrackid() {
        return trackid;
    }

    public void setTrackid(String trackid) {
        this.trackid = trackid;
    }

    
    public Map<String, Object> getExample() {
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("commentid", commentid);
    	map.put("content", content);
    	map.put("userid",userid );
    	map.put("trackid", trackid);
        
    	return map;
    }
}
