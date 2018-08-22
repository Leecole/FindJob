package com.findjob.controler;

import com.findjob.pojo.Positiontype;
import com.findjob.service.ComPositiontypeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ComPositiontypeController {

    /*关联service层到positiontypeDao接口*/
    private ComPositiontypeService comPositiontypeService;

    public ComPositiontypeService getComPositiontypeService() {
        return comPositiontypeService;
    }

    public void setComPositiontypeService(ComPositiontypeService comPositiontypeService) {
        this.comPositiontypeService = comPositiontypeService;
    }

    @RequestMapping("/ComPositionType/showAll")
    public String ShowAllPositiontypes( ModelAndView modelAndView, HttpServletRequest request){
        HttpSession session=request.getSession();
        try {
            /*将父类的id作为key,子类封装成对象，作为value*/
            Map<String, Object> map = new HashMap<String, Object>();
            List<Positiontype> p = comPositiontypeService.selectPositiontypes();
            int i = 0;//记录职位里有多少个上级标签
            for (Positiontype po : p) {
                if (po.getFaid() == null) { //找到父类positiontypeid为null的个数
                    i++;
                }
            }
            for (int y = 0; y <= i; y++) {  //遍历父类
                List<Positiontype> FptList = new ArrayList<Positiontype>();   /*将父类封装成一个对象存在ArraylistList集合中*/
                for (int x = 0; x < p.size(); x++) {
                    if (y != 0 && p.get(x).getFaid() != null) {     /*子类遍历*/
                        if (p.get(x).getFaid() == y) {      /*如果子类的id==父类id,则将这个子类存到list中*/
                            FptList.add(p.get(x));
                        }
                    } else if (y == 0) {
                        if (p.get(x).getFaid() == null) {
                            FptList.add(p.get(x));    /**/
                        }
                    }
                }
                map.put("position" + y,FptList ); //map里面：key:position+y value=l
            }
            request.setAttribute("maps", map);  /*将对象存在Map*/
/*
            session.setAttribute("PositionIsEmpty", false);
*/
            return "create";
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
