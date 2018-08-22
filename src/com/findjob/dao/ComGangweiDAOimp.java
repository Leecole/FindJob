package com.findjob.dao;

import com.findjob.dao.BaseDAO;
import com.findjob.pojo.Gangweijilu;

import org.springframework.stereotype.Component;

import java.util.List;

@Component("comGangweiDAO")
public class ComGangweiDAOimp extends BaseDAO implements ComGangweiDAO {
    public List getjianlibypositionid(int ISREAD,int COMBASEMSGID) {
        List<Gangweijilu> result = getSqlSession().getMapper(ComGangweiDAO.class).getjianlibypositionid(ISREAD,COMBASEMSGID);
        return result;
    }
}
