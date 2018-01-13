package entity;

public class Departs {
    String departmentName;
    Integer departmentId;
    String content;
    String img;
    Integer leaderId;
    String leaderName;

    public void setContent(String content) {
        this.content = content;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setLeaderId(Integer leaderId) {
        this.leaderId = leaderId;
    }

    public void setLeaderName(String leaderName) {
        this.leaderName = leaderName;
    }

    public String getContent() {
        return content;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public Integer getLeaderId() {
        return leaderId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public String getImg() {
        return img;
    }

    public String getLeaderName() {
        return leaderName;
    }
}
