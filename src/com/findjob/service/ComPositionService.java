package com.findjob.service;

import com.findjob.pojo.Position;

import java.util.List;

public interface ComPositionService {

    public List<Position> selectAllPositions_service(int combasemsgid);    //查询所有已经发布的职位
    public Position insertNewPosition_service(Position position);             //发布新职位
    public boolean deletePosition_service(int positionid);               //删除新职位
    public boolean updatePosition_service();                             //修改新职位
}
