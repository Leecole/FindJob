package com.findjob.service;

import com.findjob.dao.CombasemsgDao;
import com.findjob.pojo.Combasemsg;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("combasemsgService")
public class CombasemsgServiceImp implements CombasemsgService {
    private CombasemsgDao combasemsgDao;    //依赖注入

    /*CombasemsgDao的get set方法*/
    public CombasemsgDao getCombasemsgDao() { return combasemsgDao; }
    public void setCombasemsgDao(CombasemsgDao combasemsgDao) { this.combasemsgDao = combasemsgDao; }

    /*service层的查询所有公司方法*/
    public List<Combasemsg> showComMessage() throws Exception {
        List<Combasemsg> combasemsg=combasemsgDao.showAllCompanys();
        return combasemsg;
    }

    public Combasemsg comInfo(int accountid) throws Exception {
        Combasemsg com=combasemsgDao.getComInfo(accountid);
        return com;
    }

    public Combasemsg getComid(int useraccountid) {
        Combasemsg com= null;
        try {
            com = combasemsgDao.getComidByid(useraccountid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return com;
    }
}
