package com.findjob.pojo;

import org.apache.ibatis.type.Alias;

import java.util.Set;

@Alias("positiontype")
public class Positiontype { /*职位类型（父表）*/
    private Integer positiontypeid;

    private String typename;

    private Integer faid;


    public Integer getPositiontypeid() {
        return positiontypeid;
    }

    public void setPositiontypeid(Integer positiontypeid) {
        this.positiontypeid = positiontypeid;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public Integer getFaid() {
        return faid;
    }

    public void setFaid(Integer faid) {
        this.faid = faid;
    }


    public Positiontype(Integer positiontypeid, String typename, Integer faid) {
        this.positiontypeid = positiontypeid;
        this.typename = typename;
        this.faid = faid;
    }

    @Override
    public String toString() {
        return "Positiontype{" +
                "positiontypeid=" + positiontypeid +
                ", typename='" + typename + '\'' +
                ", faid=" + faid +
                '}';
    }
}