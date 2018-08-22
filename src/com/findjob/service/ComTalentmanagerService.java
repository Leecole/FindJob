package com.findjob.service;

import com.findjob.pojo.Talentmanager;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ComTalentmanagerService {
    public List processgetjianliidbycomlev(int combasemsgid);
    public boolean deleteCollectById( int jianliid);
    public boolean updateTalentmanagerByLevel(int jianliid,int level);


}
