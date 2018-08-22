package com.findjob.dao;


import com.findjob.pojo.Talentmanager;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ComTalentmanagerDAO {
  //通过等级和公司ID找到jianliID
    public List selectjianlibycomid(@Param("combasemsgid") int combasemsgid);
  //更新目标的等级
  public int updatelevel(int level, int jianliid);
  public boolean deleteCollectById(@Param("jianliid") int jianliid);
  public boolean updateTalentByLevel(@Param("jianliid")int jianliid,@Param("level") int level) throws Exception;

}
