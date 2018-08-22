package com.findjob.controler;


import com.findjob.pojo.Account;
import com.findjob.pojo.Combasemsg;
import com.findjob.service.CombasemsgService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class Combasemsgcontroller {
    private CombasemsgService combasemsgService;

    public CombasemsgService getCombasemsgService() {
        return combasemsgService;
    }
    public void setCombasemsgService(CombasemsgService combasemsgService) {
        this.combasemsgService = combasemsgService;
    }

    @RequestMapping("/Combasemsg/showAll")  /*前端调用路径：/Combasemsg/showAll */
    public ModelAndView showCombasemsg(ModelAndView modelAndView){
        modelAndView=new ModelAndView();
        try {
            List<Combasemsg> combasemsgs = combasemsgService.showComMessage();
            for(Combasemsg c:combasemsgs){
                System.out.println("获取到的对象为："+c.toString());
            }
            modelAndView.addObject("combasemsgs", combasemsgs);
            modelAndView.setViewName("showAllCompany");
            return modelAndView;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    /*根据accountid获取combasemsgid*/
    @RequestMapping(value = "/getComId/{useraccountid}")
    public String  getComId(@PathVariable("useraccountid") int useraccountid, HttpServletRequest request){
        HttpSession session=request.getSession();
        //System.out.println("去到了session中的id:"+useraccountid);
        try {
            Combasemsg comInfo=combasemsgService.getComid(useraccountid);
            System.out.println("根据账号id获取到的公司信息："+comInfo);
            session.setAttribute("combasemsg",comInfo);
            return "comIndex";
        } catch (Exception e) {
            e.printStackTrace();
            return null;

        }
    }
}
