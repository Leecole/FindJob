package com.findjob.service;


import com.findjob.dao.ComTalentmanagerDAO;
import com.findjob.pojo.Talentmanager;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("comTalentmanagerService")
public class ComTalentmanagerServiceimp implements ComTalentmanagerService {
    private ComTalentmanagerDAO comTalentmanagerDAO;

    public ComTalentmanagerDAO getComTalentmanagerDAO() {
        return comTalentmanagerDAO;
    }

    public void setComTalentmanagerDAO(ComTalentmanagerDAO comTalentmanagerDAO) {
        this.comTalentmanagerDAO = comTalentmanagerDAO;
    }

    public List processgetjianliidbycomlev(int combasemsgid) {
        List<Talentmanager> searchjianliid = comTalentmanagerDAO.selectjianlibycomid(combasemsgid);
        return searchjianliid;
    }

    public boolean deleteCollectById(int jianliid){
        boolean result=comTalentmanagerDAO.deleteCollectById(jianliid);
        return result;
    }

    public boolean updateTalentmanagerByLevel(int jianliid, int level) {
        boolean result= false;
        try {
            result = comTalentmanagerDAO.updateTalentByLevel(jianliid,level);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
