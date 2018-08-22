package com.findjob.service;

import com.findjob.pojo.Jianli;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface ComJianliService {
    public ArrayList processSelectJianli();
    public ArrayList processSelectallJianli();
    public List processConditionjianli(String hopedsalary, String startworktime, String hopedworktype, String hopedaddress);
    public int processSingleJianli(int jianliid, int combasemsgid, String jointime);
}
