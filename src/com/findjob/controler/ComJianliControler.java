package com.findjob.controler;

import com.findjob.pojo.Jianli;
import com.findjob.service.ComJianliService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class ComJianliControler {
    private ComJianliService comJianliService;

    public ComJianliService getComJianliService() {
        return comJianliService;
    }

    public void setComJianliService(ComJianliService comJianliService) {
        this.comJianliService = comJianliService;
    }


//    这是comIndex页面随机推荐10位简历的方法
@RequestMapping("/showjianli")
    private ModelAndView getjianli(ModelAndView model, HttpServletRequest request){
        ArrayList<Jianli> jianli = comJianliService.processSelectJianli();
//        System.out.println("获取到的简历是："+jianli);
        model.addObject("jian",jianli);
        model.setViewName("comIndex");
        return model;
    }


//    显示更多之后所有的简历
@RequestMapping("/showalljianli")
    private ModelAndView getalljianli(ModelAndView model ,HttpServletRequest request){
        ArrayList<Jianli> alljianli = comJianliService.processSelectallJianli();
        model.addObject("alljianli",alljianli);
//    System.out.println(alljianli);
        model.setViewName("talentlist");
        return model;
    }

//    条件查询简历
@RequestMapping(value = "/showalljianli/conditionjianli/{hopedsalary}&{startworktime}&{hopedworktype}&{hopedaddress}")
    private ModelAndView getconditionjianli(@PathVariable("hopedsalary") String hopedsalary,
                                            @PathVariable("startworktime") String startworktime,
                                            @PathVariable("hopedworktype") String hopedworktype,
                                            @PathVariable("hopedaddress") String hopedaddress,
                                            ModelAndView model, HttpServletRequest request
                                           ){
       if(hopedsalary==null){hopedsalary="";}
       if(startworktime==null){startworktime="";}
       if(hopedworktype==null){hopedworktype="";}
       List<Jianli> conditionjianli = comJianliService.processConditionjianli(hopedsalary,startworktime,hopedworktype,hopedaddress);
       model.addObject("conditionjianli",conditionjianli);
       model.addObject("hopedsalary",hopedsalary);
       model.addObject("startworktime",startworktime);
       model.addObject("hopedworktype",hopedworktype);
       model.addObject("hopedaddress",hopedaddress);
       request.setAttribute("hopedaddress",hopedaddress);
       request.setAttribute("hopedworktype",hopedworktype);
       request.setAttribute("startworktime",startworktime);
       request.setAttribute("hopedsalary",hopedsalary);
       model.setViewName("talentlist");
       return model;
    }


    /*根据简历id添加到收藏*/
    @RequestMapping(value="/collect/{jianliid}&{combasemsgid}")
    public ModelAndView interestByjianli(ModelAndView model,
                                         HttpServletRequest request,
                                         @PathVariable("jianliid") int jianliid,
                                         @PathVariable("combasemsgid") int combasemsgid){
        Jianli jianli;
        HttpSession session=request.getSession();
        Date d = new Date();
        //获取当前日期并格式化为：yyyy/MM/dd
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        String jointime = sdf.format(d);
        System.out.println("格式化后的日期：" + jointime);
        int result=comJianliService.processSingleJianli(jianliid,combasemsgid,jointime);
        System.out.println("影响条数："+result);
        model.addObject("getResult",result);
        model.setViewName("comIndex");
        return model;
    }
}
