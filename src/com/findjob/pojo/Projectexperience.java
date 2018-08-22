package com.findjob.pojo;

public class Projectexperience {
    private Integer id;

    private String starttimeyear;

    private String starttimemonth;

    private String endtimeyear;

    private String endtimemonth;

    private String projectname;

    private String des;

    private String dutydes;

    private Integer jianliid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStarttimeyear() {
        return starttimeyear;
    }

    public void setStarttimeyear(String starttimeyear) {
        this.starttimeyear = starttimeyear == null ? null : starttimeyear.trim();
    }

    public String getStarttimemonth() {
        return starttimemonth;
    }

    public void setStarttimemonth(String starttimemonth) {
        this.starttimemonth = starttimemonth == null ? null : starttimemonth.trim();
    }

    public String getEndtimeyear() {
        return endtimeyear;
    }

    public void setEndtimeyear(String endtimeyear) {
        this.endtimeyear = endtimeyear == null ? null : endtimeyear.trim();
    }

    public String getEndtimemonth() {
        return endtimemonth;
    }

    public void setEndtimemonth(String endtimemonth) {
        this.endtimemonth = endtimemonth == null ? null : endtimemonth.trim();
    }

    public String getProjectname() {
        return projectname;
    }

    public void setProjectname(String projectname) {
        this.projectname = projectname == null ? null : projectname.trim();
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des == null ? null : des.trim();
    }

    public String getDutydes() {
        return dutydes;
    }

    public void setDutydes(String dutydes) {
        this.dutydes = dutydes == null ? null : dutydes.trim();
    }

    public Integer getJianliid() {
        return jianliid;
    }

    public void setJianliid(Integer jianliid) {
        this.jianliid = jianliid;
    }
}