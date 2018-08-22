package com.findjob.pojo;


import org.apache.ibatis.type.Alias;

@Alias("position")
public class Position {
    private Integer positionid;

    private String positionname;

    private Integer needed;

    private String salary;

    private Integer experience;

    private String edu;

    private String address;

    private String pubtime;

    private String positionlable;

    private Integer combasemsgid;

    private Integer poitiontypeid;

    private String positionmsg;

    public Integer getPositionid() {
        return positionid;
    }

    public void setPositionid(Integer positionid) {
        this.positionid = positionid;
    }

    public String getPositionname() {
        return positionname;
    }

    public void setPositionname(String positionname) {
        this.positionname = positionname == null ? null : positionname.trim();
    }

    public Integer getNeeded() {
        return needed;
    }

    public void setNeeded(Integer needed) {
        this.needed = needed;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary == null ? null : salary.trim();
    }

    public Integer getExperience() {
        return experience;
    }

    public void setExperience(Integer experience) {
        this.experience = experience;
    }

    public String getEdu() {
        return edu;
    }

    public void setEdu(String edu) {
        this.edu = edu == null ? null : edu.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPubtime() {
        return pubtime;
    }

    public void setPubtime(String pubtime) {
        this.pubtime = pubtime == null ? null : pubtime.trim();
    }

    public String getPositionlable() {
        return positionlable;
    }

    public void setPositionlable(String positionlable) {
        this.positionlable = positionlable == null ? null : positionlable.trim();
    }

    public Integer getCombasemsgid() {
        return combasemsgid;
    }

    public void setCombasemsgid(Integer combasemsgid) {
        this.combasemsgid = combasemsgid;
    }

    public Integer getPoitiontypeid() {
        return poitiontypeid;
    }

    public void setPoitiontypeid(Integer poitiontypeid) {
        this.poitiontypeid = poitiontypeid;
    }

    public String getPositionmsg() {
        return positionmsg;
    }

    public void setPositionmsg(String positionmsg) {
        this.positionmsg = positionmsg == null ? null : positionmsg.trim();
    }

    public Position() {
    }

    @Override
    public String toString() {
        return "Position{" +
                "positionid=" + positionid +
                ", positionname='" + positionname + '\'' +
                ", needed=" + needed +
                ", salary='" + salary + '\'' +
                ", experience=" + experience +
                ", edu='" + edu + '\'' +
                ", address='" + address + '\'' +
                ", pubtime='" + pubtime + '\'' +
                ", positionlable='" + positionlable + '\'' +
                ", combasemsgid=" + combasemsgid +
                ", poitiontypeid=" + poitiontypeid +
                ", positionmsg='" + positionmsg + '\'' +
                '}';
    }

    public Position(Integer positionid, String positionname, Integer needed, String salary, Integer experience, String edu, String address, String pubtime, String positionlable, Integer combasemsgid, Integer poitiontypeid, String positionmsg) {
        this.positionid = positionid;
        this.positionname = positionname;
        this.needed = needed;
        this.salary = salary;
        this.experience = experience;
        this.edu = edu;
        this.address = address;
        this.pubtime = pubtime;
        this.positionlable = positionlable;
        this.combasemsgid = combasemsgid;

        this.poitiontypeid = poitiontypeid;
        this.positionmsg = positionmsg;
    }
}
