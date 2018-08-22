package com.findjob.service;

import com.findjob.pojo.Positiontype;

import java.util.List;

public interface ComPositiontypeService {
    public List<Positiontype> selectPositiontypes() throws Exception; //查询所有的职位类型
}
