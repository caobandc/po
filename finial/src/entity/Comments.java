package entity;

public class Comments {
    Integer commentId;
    Integer userId;
    Integer activityId;
    String commentText;
    String img;
    String nickName;
    String aid;

    public void setAid(String aid) {
        this.aid = aid;
    }

    public String getAid() {
        return aid;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public void setCommentText(String commentText) {
        this.commentText = commentText;
    }

    public Integer getUserId() {
        return userId;
    }

    public String getImg() {
        return img;
    }

    public String getNickName() {
        return nickName;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public String getCommentText() {
        return commentText;
    }

    public Integer getActivityId() {
        return activityId;
    }
}
