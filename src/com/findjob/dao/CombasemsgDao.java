package com.findjob.dao;

import com.findjob.pojo.Combasemsg;

import java.util.List;

public interface CombasemsgDao {

    public List<Combasemsg> showAllCompanys();  //查询所有的企业公司
    public Combasemsg getComInfo(int accountid);//根据hr的id查询其所属公司的信息
    public Combasemsg getComidByid(int useraccountid)throws Exception;//根据账号id查询公司id


}
