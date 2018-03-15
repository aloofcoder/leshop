package net.le.system.entity;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {

    private Integer id;
    private String userNumber;
    private String userName;
    /** 昵称*/
    private String nickName;
    private String password;
//    /** 国籍*/
//    private String nationality;
//    /** 省份（州）*/
//    private String province;
//    /** 城市*/
//    private String city;
//    /** 区*/
//    private String area;
//    /** 街道*/
//    private String road;
    /** 小区或*/

    private Date createDate;
    private Date editDate;
    private String createUser;
    private String editUser;

    public void setId(Integer id) {
        this.id = id;
    }

    public void setUserNumber(String userNumber) {
        this.userNumber = userNumber;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public void setEditDate(Date editDate) {
        this.editDate = editDate;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public void setEditUser(String editUser) {
        this.editUser = editUser;
    }

    public Integer getId() {
        return id;
    }

    public String getUserNumber() {
        return userNumber;
    }

    public String getUserName() {
        return userName;
    }

    public String getNickName() {
        return nickName;
    }

    public String getPassword() {
        return password;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public Date getEditDate() {
        return editDate;
    }

    public String getCreateUser() {
        return createUser;
    }

    public String getEditUser() {
        return editUser;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userNumber='" + userNumber + '\'' +
                ", userName='" + userName + '\'' +
                ", nickName='" + nickName + '\'' +
                ", password='" + password + '\'' +
                ", createDate=" + createDate +
                ", editDate=" + editDate +
                ", createUser='" + createUser + '\'' +
                ", editUser='" + editUser + '\'' +
                '}';
    }
}
