package com.findjob.pojo;

public class Gonggao {
    private Integer id;

    private String tittle;

    private String messae;

    private String pubtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle == null ? null : tittle.trim();
    }

    public String getMessae() {
        return messae;
    }

    public void setMessae(String messae) {
        this.messae = messae == null ? null : messae.trim();
    }

    public String getPubtime() {
        return pubtime;
    }

    public void setPubtime(String pubtime) {
        this.pubtime = pubtime == null ? null : pubtime.trim();
    }
}