package com.findjob.pojo;

import org.apache.ibatis.type.Alias;

@Alias("account")       //别名必须小写
public class Account {
    private Integer useraccountid;
    private String phone;
    private String password;
    private String touxiang;
    private Integer status;
    private Integer type;

    public Integer getUseraccountid() {
        return useraccountid;
    }

    public void setUseraccountid(Integer useraccountid) {
        this.useraccountid = useraccountid;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getTouxiang() {
        return touxiang;
    }

    public void setTouxiang(String touxiang) {
        this.touxiang = touxiang == null ? null : touxiang.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Account{" +
                "useraccountid=" + useraccountid +
                ", phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                ", touxiang='" + touxiang + '\'' +
                ", status=" + status +
                ", type=" + type +
                '}';
    }
}