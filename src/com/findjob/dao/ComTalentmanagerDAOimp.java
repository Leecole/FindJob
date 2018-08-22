package com.findjob.dao;


import com.findjob.pojo.Talentmanager;
import org.springframework.stereotype.Component;

import java.util.List;


@Component("comTalentmanagerDAO")
public class ComTalentmanagerDAOimp extends BaseDAO implements ComTalentmanagerDAO {


    public List selectjianlibycomid(int combasemsgid) {
      List<Talentmanager> jianliid=getSqlSession().getMapper(ComTalentmanagerDAO.class).selectjianlibycomid(combasemsgid);
        return jianliid;
    }

    public int updatelevel(int level, int jianliid) {
     int re=getSqlSession().getMapper(ComTalentmanagerDAO.class).updatelevel(level,jianliid);
     return re;
    }

    public boolean deleteCollectById(int jianliid) {
        boolean result=getSqlSession().getMapper(ComTalentmanagerDAO.class).deleteCollectById(jianliid);
        return result;
    }

    public boolean updateTalentByLevel(int jianliid, int level) throws Exception {
        boolean result=getSqlSession().getMapper(ComTalentmanagerDAO.class).updateTalentByLevel(jianliid,level);
        return result;
    }
}
