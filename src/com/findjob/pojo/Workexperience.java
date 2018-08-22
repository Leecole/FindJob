package com.findjob.pojo;

public class Workexperience {
    private Integer id;

    private String starttimeyear;

    private String starttimemonth;

    private String endtimeyear;

    private String endtimemonth;

    private String companyname;

    private String department;

    private String zhiwei;

    private String workdesc;

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

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname == null ? null : companyname.trim();
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public String getZhiwei() {
        return zhiwei;
    }

    public void setZhiwei(String zhiwei) {
        this.zhiwei = zhiwei == null ? null : zhiwei.trim();
    }

    public String getWorkdesc() {
        return workdesc;
    }

    public void setWorkdesc(String workdesc) {
        this.workdesc = workdesc == null ? null : workdesc.trim();
    }

    public Integer getJianliid() {
        return jianliid;
    }

    public void setJianliid(Integer jianliid) {
        this.jianliid = jianliid;
    }
}