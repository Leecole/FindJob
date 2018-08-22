package com.findjob.dao;

import com.findjob.pojo.Position;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ComPositionDao {   //公司职位dao

    public List<Position> selectAllPositions(@Param("combasemsgid") int combasemsgid) throws Exception;    //查询所有已经发布的职位
    public Position insertNewPosition(Position position)throws Exception;                //发布新职位
    public boolean deletePosition(@Param("positionid") int positionid)throws Exception;               //删除新职位
    public boolean updatePosition(int positionid)throws Exception;               //修改新职位
}
