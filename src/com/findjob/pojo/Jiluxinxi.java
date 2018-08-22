package com.findjob.pojo;

public class Jiluxinxi {
    private Integer id;

    private String time;

    private Integer type;

    private Integer useraccountid;

    private Integer positionid;

    private Integer combasemsgid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getUseraccountid() {
        return useraccountid;
    }

    public void setUseraccountid(Integer useraccountid) {
        this.useraccountid = useraccountid;
    }

    public Integer getPositionid() {
        return positionid;
    }

    public void setPositionid(Integer positionid) {
        this.positionid = positionid;
    }

    public Integer getCombasemsgid() {
        return combasemsgid;
    }

    public void setCombasemsgid(Integer combasemsgid) {
        this.combasemsgid = combasemsgid;
    }
}