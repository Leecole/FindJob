package com.findjob.dao;

import com.findjob.pojo.Condition;
import com.findjob.pojo.Jianli;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface ComJianliDAO {

    public ArrayList showjianli();//登陆公司主页后随机显示10位简历

    public ArrayList alljianli();//显示所有的简历

    public List  conditionjianli(Condition condition);

    public int getJianliByid(@Param("jianliid") int jianliid, @Param("combasemsgid") int combasemsgid, @Param("jointime") String jointime) throws Exception;

}
