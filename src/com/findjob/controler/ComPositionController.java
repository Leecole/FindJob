package com.findjob.controler;

import com.findjob.pojo.*;
import com.findjob.service.ComPositionService;
import com.findjob.service.CombasemsgService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.org.apache.xml.internal.utils.ListingErrorHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class ComPositionController {
    private ComPositionService comPositionService;
    private CombasemsgService combasemsgService;

    public CombasemsgService getCombasemsgService() {
        return combasemsgService;
    }
    public void setCombasemsgService(CombasemsgService combasemsgService) {
        this.combasemsgService = combasemsgService;
    }
    public ComPositionService getComPositionService() {
        return comPositionService;
    }
    public void setComPositionService(ComPositionService comPositionService) {
        this.comPositionService = comPositionService;
    }

    /**
     * 插入新职位
     * @param position
     * @param model
     * @param request
     * @param modelAttribute
     * @return
     */
    @RequestMapping("/ComPosition/insertPosition")
    public String InsertPosition(Position position,Model model,HttpServletRequest request,ModelAttribute modelAttribute){
        HttpSession session=request.getSession();
        /*拿到公司名下hr的登录id*/
        Account account=(Account) session.getAttribute("account");
        int accountid=account.getUseraccountid();
         /*拿到该id账户所属公司的id以及基本信息*/
        Combasemsg comInfo=(Combasemsg) session.getAttribute("Combasemsg");
        System.out.println("根据accountid获取到了公司的基本信息："+comInfo);
        int comid=comInfo.getCombasemsgid();
        /*拿到职位对应的id*/
        Positiontype positiontype=(Positiontype) request.getSession().getAttribute("maps");
        int ptid=positiontype.getPositiontypeid();
        System.out.println("取到的职位类型id:"+ptid);

        /*获取界面的信息,并且将获取到的所有表单信息封装成一个Position 对象*/
        Position p=new Position();
        p.setPositionname(position.getPositionname());
        p.setNeeded(position.getNeeded());
        p.setSalary(position.getSalary());
        p.setEdu(position.getEdu());
        p.setExperience(position.getExperience());
        p.setAddress(position.getAddress());
        p.setPubtime(position.getPubtime());
        p.setPositionlable(position.getPositionlable());
        p.setPositionmsg(position.getPositionmsg());
        p.setPositionid(ptid);
        p.setCombasemsgid(comid);
       // System.out.println("获取到的对象信息为："+p.toString());
        Position pos=comPositionService.insertNewPosition_service(p);
        model.addAttribute("position",position);
        return "create";
    }

    /**
     * 查询所有已发布的职位信息
     * @param model
     * @return
     */
    @RequestMapping("/SelectAllPositions/{combasemsgid}")
    public ModelAndView SelectAllPositions(ModelAndView model,
                                           @PathVariable("combasemsgid") int combasemsgid,
                                           @RequestParam(required = false,defaultValue = "1",value = "pn" )Integer pn){
        PageHelper.startPage(pn,4);//每页显示五条记录
        System.out.println("进入查询职位方法");
        List<Position> positions=comPositionService.selectAllPositions_service(combasemsgid);
        PageInfo<Position> PageInfo = new PageInfo(positions,4);
        model.addObject("PageInfo",PageInfo);
        model.setViewName("publicPositions");
        return model;
    }

    /**
     * 根据positionid删除该发布的职位
     * @param model
     * @param positionid
     * @return
     */
    @RequestMapping(value="/DeletePositionById/{positionid}")
    public ModelAndView   DeletePositionById(ModelAndView model,
                                             @PathVariable("positionid") int positionid,
                                            HttpServletRequest request){
        boolean result=comPositionService.deletePosition_service(positionid);
        model.addObject("deleteResult",result);
        request.setAttribute("deleteResult",result);
        request.setAttribute("deleteResult","success");
        model.setViewName("publicPositions");
        return model;
    }
}
