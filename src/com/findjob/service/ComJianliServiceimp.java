package com.findjob.service;

import com.findjob.dao.ComJianliDAO;
import com.findjob.pojo.Condition;
import com.findjob.pojo.Jianli;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component("comJianliService")
public class ComJianliServiceimp implements ComJianliService {
    private ComJianliDAO comJianliDAO;

    public void setComJianliDAO(ComJianliDAO comJianliDAO) {
        this.comJianliDAO = comJianliDAO;
    }

//    comIndex页面显示的10个随机简历
    public ArrayList processSelectJianli(){

        ArrayList<Jianli> selectjianli = comJianliDAO.showjianli();
        return selectjianli;

    }

//    talentlist页面显示所有的简历
    public ArrayList processSelectallJianli(){
        ArrayList<Jianli> selectalljianli = comJianliDAO.alljianli();
        return  selectalljianli;
    }

//    talentlist页面条件查询
     public List processConditionjianli(String hopedsalary,String startworktime,String hopedworktype,String hopedaddress){
         Condition condition = new Condition(hopedsalary,startworktime,hopedworktype,hopedaddress);
//         System.out.println("service"+condition);
        List<Jianli> conditionjianli = comJianliDAO.conditionjianli(condition);
//         System.out.println("service"+conditionjianli);
        return conditionjianli;
     }

    public int processSingleJianli(int jianliid,int combasemsgid,String jointime){
        int  res= 0;
        try {
            res = comJianliDAO.getJianliByid(jianliid,combasemsgid,jointime);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
}

