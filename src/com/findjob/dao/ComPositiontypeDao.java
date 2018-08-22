package com.findjob.dao;

import com.findjob.pojo.Position;
import com.findjob.pojo.Positiontype;

import java.util.List;
import java.util.Map;

public interface ComPositiontypeDao {

    public List<Positiontype> selectPositiontypeByPid();  //查询所有的职位类型

}
