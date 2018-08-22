package com.findjob.pojo;

import org.apache.ibatis.type.Alias;

@Alias("jianli")
public class Jianli {
    private Integer jianliid;

    private String name;

    private Integer age;

    private Integer sex;

    private String email;

    private String phone;

    private String address;

    private String startworktime;

    private String workstatus;

    private String hopedhangye;

    private String hopedzhiwei;

    private String hopedworktype;

    private String hopedsalary;

    private String hopedaddress;

    private Integer useraccountid;

    public Integer getJianliid() {
        return jianliid;
    }

    public void setJianliid(Integer jianliid) {
        this.jianliid = jianliid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getStartworktime() {
        return startworktime;
    }

    public void setStartworktime(String startworktime) {
        this.startworktime = startworktime == null ? null : startworktime.trim();
    }

    public String getWorkstatus() {
        return workstatus;
    }

    public void setWorkstatus(String workstatus) {
        this.workstatus = workstatus == null ? null : workstatus.trim();
    }

    public String getHopedhangye() {
        return hopedhangye;
    }

    public void setHopedhangye(String hopedhangye) {
        this.hopedhangye = hopedhangye == null ? null : hopedhangye.trim();
    }

    public String getHopedzhiwei() {
        return hopedzhiwei;
    }

    public void setHopedzhiwei(String hopedzhiwei) {
        this.hopedzhiwei = hopedzhiwei == null ? null : hopedzhiwei.trim();
    }

    public String getHopedworktype() {
        return hopedworktype;
    }

    public void setHopedworktype(String hopedworktype) {
        this.hopedworktype = hopedworktype == null ? null : hopedworktype.trim();
    }

    public String getHopedsalary() {
        return hopedsalary;
    }

    public void setHopedsalary(String hopedsalary) {
        this.hopedsalary = hopedsalary == null ? null : hopedsalary.trim();
    }

    public String getHopedaddress() {
        return hopedaddress;
    }

    public void setHopedaddress(String hopedaddress) {
        this.hopedaddress = hopedaddress == null ? null : hopedaddress.trim();
    }

    public Integer getUseraccountid() {
        return useraccountid;
    }

    public void setUseraccountid(Integer useraccountid) {
        this.useraccountid = useraccountid;
    }

    public Jianli(Integer jianliid, String name, Integer age, Integer sex,
                  String email, String phone, String address, String startworktime,
                  String workstatus, String hopedhangye, String hopedzhiwei,
                  String hopedworktype, String hopedsalary, String hopedaddress, Integer useraccountid) {
        this.jianliid = jianliid;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.startworktime = startworktime;
        this.workstatus = workstatus;
        this.hopedhangye = hopedhangye;
        this.hopedzhiwei = hopedzhiwei;
        this.hopedworktype = hopedworktype;
        this.hopedsalary = hopedsalary;
        this.hopedaddress = hopedaddress;
        this.useraccountid = useraccountid;
    }

    public Jianli() {
    }

    @Override
    public String toString() {
        return "Jianli{" +
                "jianliid=" + jianliid +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", sex=" + sex +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", startworktime='" + startworktime + '\'' +
                ", workstatus='" + workstatus + '\'' +
                ", hopedhangye='" + hopedhangye + '\'' +
                ", hopedzhiwei='" + hopedzhiwei + '\'' +
                ", hopedworktype='" + hopedworktype + '\'' +
                ", hopedsalary='" + hopedsalary + '\'' +
                ", hopedaddress='" + hopedaddress + '\'' +
                ", useraccountid=" + useraccountid +
                '}';
    }
}