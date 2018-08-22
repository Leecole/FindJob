package com.findjob.service;

import com.findjob.dao.ComPositionDao;
import com.findjob.pojo.Position;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("comPositionService")
public class ComPositionServiceImp implements ComPositionService {

    private ComPositionDao comPositionDao; //关联positionDao接口，并获取get set方法

    /**
     * get,set,方法
     * @return
     */
    public ComPositionDao getComPositionDao() {
        return comPositionDao;
    }
    public void setComPositionDao(ComPositionDao comPositionDao) {
        this.comPositionDao = comPositionDao;
    }


    /**
     * service层的查询所有已发布的职位
     * @return
     * @throws Exception
     */
    public List<Position> selectAllPositions_service(int combasemsgid)  {
        List<Position> positions=null;
        try {
             positions= comPositionDao.selectAllPositions(combasemsgid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return positions;
    }

    /**
     * service发布新职位
     * @param position
     * @return
     * @throws Exception
     */
    public Position insertNewPosition_service(Position position){
        Position p= null;
        try {
            p = comPositionDao.insertNewPosition(position);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    /**
     * service层删除职位
     * @param positionid
     * @return
     * @throws Exception
     */
    public boolean deletePosition_service(int positionid)  {
        boolean result=false;
        try {
             result=comPositionDao.deletePosition(positionid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * service层修改某个职位信息
     * @return
     * @throws Exception
     */
    public boolean updatePosition_service(){
        return false;
    }
}
