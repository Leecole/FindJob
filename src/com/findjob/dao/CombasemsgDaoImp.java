package com.findjob.dao;

import com.findjob.pojo.Combasemsg;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("combasemsgDao")
public class CombasemsgDaoImp extends BaseDAO implements CombasemsgDao {

    public List<Combasemsg> showAllCompanys() {
        List<Combasemsg> comMessage=getSqlSession().getMapper(CombasemsgDao.class).showAllCompanys();
        return comMessage;
    }

    public Combasemsg getComInfo(int accountid) {
        Combasemsg comInfo=getSqlSession().getMapper(CombasemsgDao.class).getComInfo(accountid);
        return comInfo;
    }

    public Combasemsg getComidByid(int useraccountid) {
        Combasemsg com= null;
        try {
            com = getSqlSession().getMapper(CombasemsgDao.class).getComidByid(useraccountid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return com;
    }
}
