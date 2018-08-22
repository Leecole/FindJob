package com.findjob.pojo;

import org.apache.ibatis.type.Alias;

@Alias("combasemsg")
public class Combasemsg {
    private Integer combasemsgid;
    private String comname;
    private String faren;
    private String phone;
    private String registertime;
    private String businesslicense;//公司许可证
    private String industry;
    private String address;
    private Integer comsize;
    private Integer comtype;

    @Override
    public String toString() {
        return "Combasemsg{" +
                "combasemsgid=" + combasemsgid +
                ", comname='" + comname + '\'' +
                ", faren='" + faren + '\'' +
                ", phone='" + phone + '\'' +
                ", registertime='" + registertime + '\'' +
                ", businesslicense='" + businesslicense + '\'' +
                ", industry='" + industry + '\'' +
                ", address='" + address + '\'' +
                ", comsize=" + comsize +
                ", comtype=" + comtype +
                ", accountid=" + accountid +
                ", des='" + des + '\'' +
                '}';
    }

    private Integer accountid;

    private String des;

    public Integer getCombasemsgid() {
        return combasemsgid;
    }

    public void setCombasemsgid(Integer combasemsgid) {
        this.combasemsgid = combasemsgid;
    }

    public String getComname() {
        return comname;
    }

    public void setComname(String comname) {
        this.comname = comname == null ? null : comname.trim();
    }

    public String getFaren() {
        return faren;
    }

    public void setFaren(String faren) {
        this.faren = faren == null ? null : faren.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getRegistertime() {
        return registertime;
    }

    public void setRegistertime(String registertime) {
        this.registertime = registertime == null ? null : registertime.trim();
    }

    public String getBusinesslicense() {
        return businesslicense;
    }

    public void setBusinesslicense(String businesslicense) {
        this.businesslicense = businesslicense == null ? null : businesslicense.trim();
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry == null ? null : industry.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getComsize() {
        return comsize;
    }

    public void setComsize(Integer comsize) {
        this.comsize = comsize;
    }

    public Combasemsg() {
    }

    public Integer getComtype() {
        return comtype;
    }

    public Combasemsg(Integer combasemsgid, String comname, String faren, String phone, String registertime, String businesslicense, String industry, String address, Integer comsize, Integer comtype, Integer accountid, String des) {
        this.combasemsgid = combasemsgid;
        this.comname = comname;
        this.faren = faren;
        this.phone = phone;
        this.registertime = registertime;
        this.businesslicense = businesslicense;
        this.industry = industry;
        this.address = address;
        this.comsize = comsize;
        this.comtype = comtype;
        this.accountid = accountid;
        this.des = des;
    }

    public void setComtype(Integer comtype) {
        this.comtype = comtype;
    }

    public Integer getAccountid() {
        return accountid;
    }

    public void setAccountid(Integer accountid) {
        this.accountid = accountid;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des == null ? null : des.trim();
    }
}