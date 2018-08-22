package com.findjob.pojo;

public class Talentmanager {
    private Integer id;

    private String jointime;

    private Integer level;

    private Integer jianliid;

    public Talentmanager(Integer id, String jointime, Integer level, Integer jianliid, Integer combasemsgid) {
        this.id = id;
        this.jointime = jointime;
        this.level = level;
        this.jianliid = jianliid;
        this.combasemsgid = combasemsgid;

    }

    public Talentmanager() {
    }

    private Integer combasemsgid;

    private Jianli jianli;

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

    public String getJointime() {
        return jointime;
    }

    public void setJointime(String jointime) {
        this.jointime = jointime == null ? null : jointime.trim();
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getJianliid() {
        return jianliid;
    }

    public void setJianliid(Integer jianliid) {
        this.jianliid = jianliid;
    }

    public Integer getCombasemsgid() {
        return combasemsgid;
    }

    public void setCombasemsgid(Integer combasemsgid) {
        this.combasemsgid = combasemsgid;
    }
}