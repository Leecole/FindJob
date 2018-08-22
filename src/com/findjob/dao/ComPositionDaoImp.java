package com.findjob.dao;

import com.findjob.pojo.Position;
import org.springframework.stereotype.Component;

import java.util.List;


@Component("comPositionDao")
public class ComPositionDaoImp extends BaseDAO implements ComPositionDao {


    /**
     * 查询所有已发布的职位
     * @return
     */
    public List<Position> selectAllPositions(int combasemsgid) {
        List<Position> position= null;
        try {
            position = getSqlSession().getMapper(ComPositionDao.class).selectAllPositions(combasemsgid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return position;
    }

    /**
     * 发布新职位
     * @param position
     * @return
     */
    public Position insertNewPosition(Position position) {
        Position p= null;
        try {
            p = getSqlSession().getMapper(ComPositionDao.class).insertNewPosition(position);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    /**
     * 删除已发布的某个职位,所有职位，选中的几个职位
     * @param positionid
     * @return
     */
    public boolean deletePosition(int positionid) {
        boolean result=false;
        try {
            getSqlSession().getMapper(ComPositionDao.class).deletePosition(positionid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 修改某个职位
     * @return
     */
    public boolean updatePosition(int positionid) {
        return false;
    }
}
