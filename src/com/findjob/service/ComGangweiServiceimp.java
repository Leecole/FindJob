package com.findjob.service;

import com.findjob.dao.ComGangweiDAO;
import com.findjob.pojo.Gangweijilu;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("comGangweiService")
public class ComGangweiServiceimp implements ComGangweiService{
    private ComGangweiDAO comGangweiDAO;

    public ComGangweiDAO getComGangweiDAO() {
        return comGangweiDAO;
    }

    public void setComGangweiDAO(ComGangweiDAO comGangweiDAO) {
        this.comGangweiDAO = comGangweiDAO;
    }


    public List processgetjianlibycombasemsgid(int isread, int combasemsgid) {
        List<Gangweijilu> getresult = comGangweiDAO.getjianlibypositionid(isread,combasemsgid);
        return getresult;
    }
}
