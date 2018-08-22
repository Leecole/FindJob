package com.findjob.pojo;

public class Gangweijilu {
    private Integer id;

    private String sendtime;

    private Integer isread;

    private Integer type;

    private Integer jianliid;

    private Integer positionid;

    private Jianli jianli;

    public Gangweijilu(Integer id, String sendtime, Integer isread, Integer type, Integer jianliid, Integer positionid) {
        this.id = id;
        this.sendtime = sendtime;
        this.isread = isread;
        this.type = type;
        this.jianliid = jianliid;
        this.positionid = positionid;
    }

    public Gangweijilu() {
    }

    public Jianli getJianli() {
        return jianli;
    }

    public void setJianli(Jianli jianli) {
        this.jianli = jianli;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSendtime() {
        return sendtime;
    }

    public void setSendtime(String sendtime) {
        this.sendtime = sendtime == null ? null : sendtime.trim();
    }

    public Integer getIsread() {
        return isread;
    }

    public void setIsread(Integer isread) {
        this.isread = isread;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getJianliid() {
        return jianliid;
    }

    public void setJianliid(Integer jianliid) {
        this.jianliid = jianliid;
    }

    public Integer getPositionid() {
        return positionid;
    }

    public void setPositionid(Integer positionid) {
        this.positionid = positionid;
    }
}