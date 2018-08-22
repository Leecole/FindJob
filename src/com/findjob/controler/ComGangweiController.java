package com.findjob.controler;


import com.findjob.pojo.Gangweijilu;
import com.findjob.pojo.Jianli;
import com.findjob.service.ComGangweiService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ComGangweiController {
    private ComGangweiService comGangweiService;

    public ComGangweiService getComGangweiService() {
        return comGangweiService;
    }

    public void setComGangweiService(ComGangweiService comGangweiService) {
        this.comGangweiService = comGangweiService;
    }

    @RequestMapping("/obtainjianli/{isread}&{combasemsgid}")
    public ModelAndView getjianli(@PathVariable ("isread") int isread,
                                  @PathVariable ("combasemsgid") int combasemsgid,
                                  @RequestParam(required = false,defaultValue = "1",value = "pn" )Integer pn,
                                  ModelAndView model){
        PageHelper.startPage(pn,7);
        List<Gangweijilu> obtainjianli = comGangweiService.processgetjianlibycombasemsgid(isread,combasemsgid);
        PageInfo<Jianli> obtainpageInfo = new PageInfo(obtainjianli,7);
        model.addObject("obtainpageInfo",obtainpageInfo);
        model.addObject("isread",isread);
        model.addObject("combasemsgid",combasemsgid);
        model.setViewName("positions");
        return model;
    }

}
