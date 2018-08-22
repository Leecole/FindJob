package com.findjob.dao;

import com.findjob.pojo.Position;
import com.findjob.pojo.Positiontype;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("comPositiontypeDao")
public class ComPositiontypeDaoImp extends BaseDAO implements ComPositiontypeDao {

    /**
     * ，查询所有职位类型，职位方向，使用自连接实现
     * @return
     */
    public List<Positiontype> selectPositiontypeByPid() {
        List<Positiontype> positiontype=getSqlSession().getMapper(ComPositiontypeDao.class).selectPositiontypeByPid();
        return positiontype;
    }
}
