package entity;

public class Works
{
    Integer workId;
    Integer userId;
    String title;
    String content;
    String spec;
    String createMethod;
    Integer likeNum;
    String createTime;
    String username;

    public void setUsername(String username) {
        this.username = username;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setCreateMethod(String createMethod) {
        this.createMethod = createMethod;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public void setLikeNum(Integer likeNum) {
        this.likeNum = likeNum;
    }

    public void setSpec(String spec) {
        this.spec = spec;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setWorkId(Integer workId) {
        this.workId = workId;
    }

    public Integer getUserId() {
        return userId;
    }

    public Integer getLikeNum() {
        return likeNum;
    }

    public Integer getWorkId() {
        return workId;
    }

    public String getContent() {
        return content;
    }

    public String getCreateMethod() {
        return createMethod;
    }

    public String getCreateTime() {
        return createTime;
    }

    public String getSpec() {
        return spec;
    }

    public String getUsername() {
        return username;
    }

    public String getTitle() {
        return title;
    }
}
