package com.findjob.service;

import com.findjob.dao.ComPositiontypeDao;
import com.findjob.pojo.Positiontype;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("comPositiontypeService")
public class ComPositiontypeServiceImp implements ComPositiontypeService {

    private ComPositiontypeDao comPositiontypeDao;

    public ComPositiontypeDao getComPositiontypeDao() {
        return comPositiontypeDao;
    }
    public void setComPositiontypeDao(ComPositiontypeDao comPositiontypeDao) {
        this.comPositiontypeDao = comPositiontypeDao;
    }


    /**
     * service层的查询所有职位类型以及方向的方法
     * @return
     */
    public List<Positiontype> selectPositiontypes() {
        List<Positiontype> positiontype=comPositiontypeDao.selectPositiontypeByPid();
        return positiontype;
    }
}
