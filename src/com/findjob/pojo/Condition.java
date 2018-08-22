package com.findjob.pojo;

import org.apache.ibatis.type.Alias;

@Alias("condition")
public class Condition {

    private String hopedsalary;
    private String startworktime;
    private String hopedworktype;
    private String hopedaddress;

    @Override
    public String toString() {
        return "Condition{" +
                "hopedsalary='" + hopedsalary + '\'' +
                ", startworktime='" + startworktime + '\'' +
                ", hopedworktype='" + hopedworktype + '\'' +
                ", hopedaddress='" + hopedaddress + '\'' +
                '}';
    }

    public Condition(String hopedsalary, String startworktime, String hopedworktype, String hopedaddress) {
        this.hopedsalary = hopedsalary;
        this.startworktime = startworktime;
        this.hopedworktype = hopedworktype;
        this.hopedaddress = hopedaddress;
    }

    public String getHopedaddress() {
        return hopedaddress;
    }

    public void setHopedaddress(String hopedaddress) {
        this.hopedaddress = hopedaddress;
    }

    public String getHopedsalary() {
        return hopedsalary;
    }

    public void setHopedsalary(String hopedsalary) {
        this.hopedsalary = hopedsalary;
    }

    public String getStartworktime() {
        return startworktime;
    }

    public void setStartworktime(String startworktime) {
        this.startworktime = startworktime;
    }

    public String getHopedworktype() {
        return hopedworktype;
    }

    public void setHopedworktype(String hopedworktype) {
        this.hopedworktype = hopedworktype;
    }
}
