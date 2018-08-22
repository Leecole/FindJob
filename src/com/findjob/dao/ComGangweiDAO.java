package com.findjob.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ComGangweiDAO {
    public List getjianlibypositionid(@Param("ISREAD") int ISREAD, @Param("COMBASEMSGID") int COMBASEMSGID);
}
