package com.findjob.dao;

import com.findjob.pojo.Condition;
import com.findjob.pojo.Jianli;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component("comJianliDAO")
public class ComJianliDAOimp extends BaseDAO implements ComJianliDAO {

    //Dao层查询数据库,10位随机简历
    public ArrayList showjianli(){
        ArrayList<Jianli> jianli=getSqlSession().getMapper(ComJianliDAO.class).showjianli();
        return jianli;
    }
    //显示更多后所有的简历
    public ArrayList alljianli(){
        ArrayList<Jianli> alljianli=getSqlSession().getMapper(ComJianliDAO.class).alljianli();
        return alljianli;
    }

    //条件查询简历
    public List conditionjianli(Condition condition){
//        System.out.println("DAO"+condition.toString());
        List<Jianli> selectjianli = getSqlSession().getMapper(ComJianliDAO.class).conditionjianli(condition);
//        System.out.println("select"+selectjianli);
        return  selectjianli;
    }

    public int getJianliByid(int jinaliid,int combasemsgid,String jointime){
        int result= 0;
        try {
            result = getSqlSession().getMapper(ComJianliDAO.class).getJianliByid(jinaliid,combasemsgid,jointime);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
