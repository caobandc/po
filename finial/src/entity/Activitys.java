package entity;

public class Activitys {
    Integer activityId;
    Integer userId;
    String activityName;
    String img;
    String activityMes;
    String content;
    Integer state;
    double totalPage;
    String aid;

    public void setAid(String aid) {
        this.aid = aid;
    }

    public String getAid() {
        return aid;
    }

    public void setTotalPage(double totalPage) {
        this.totalPage = totalPage;
    }

    public double getTotalPage() {
        return totalPage;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public void setActivityMes(String activityMes) {
        this.activityMes = activityMes;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getContent() {
        return content;
    }

    public String getImg() {
        return img;
    }

    public Integer getActivityId() {
        return activityId;
    }

    public Integer getState() {
        return state;
    }

    public String getActivityMes() {
        return activityMes;
    }

    public String getActivityName() {
        return activityName;
    }
}
