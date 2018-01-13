package entity;

import java.util.List;

public class Users {

    private String username;
    private String password;
    private String number;
    private Integer userId;
    private Integer sex;
    private String email;
    private Integer departmentId;
    private Integer isBackuser;
    private String content;
    private String img;
    String uid;
    String right;
    double totalPage;

    public void setTotalPage(double totalPage) {
        this.totalPage = totalPage;
    }

    public double getTotalPage() {
        return totalPage;
    }

    public void setRight(String right) {
        this.right = right;
    }

    public String getRight() {
        return right;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUid() {
        return uid;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public void setIsBackuser(Integer isBackuser) {
        this.isBackuser = isBackuser;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public String getNumber() {
        return number;
    }

    public Integer getIsBackuser() {
        return isBackuser;
    }

    public Integer getSex() {
        return sex;
    }

    public Integer getUserId() {
        return userId;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getImg() {
        return img;
    }

    public String getUsername() {
        return username;
    }

    public String getContent() {
        return content;
    }
}
