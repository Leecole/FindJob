package com.findjob.controler;

import com.findjob.pojo.Jianli;
import com.findjob.pojo.Talentmanager;
import com.findjob.service.ComTalentmanagerService;
import com.findjob.service.ResponserByajax;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class ComTalentmanagerControler {

    private ResponserByajax responserByajax;//自动注入
    private ComTalentmanagerService comTalentmanagerService;


    public void setResponserByajax(ResponserByajax responserByajax) {
        this.responserByajax = responserByajax;
    }

    public ComTalentmanagerService getComTalentmanagerService() {
        return comTalentmanagerService;
    }

    public void setComTalentmanagerService(ComTalentmanagerService comTalentmanagerService) {
        this.comTalentmanagerService = comTalentmanagerService;
    }

    @RequestMapping(value = "/getjianliid/{combasemsgid}")
    public ModelAndView getjianliid(@PathVariable("combasemsgid") int combasemsgid,
                                    @RequestParam(required = false, defaultValue = "1", value = "pn") Integer pn,
                                    ModelAndView model
    ) {
        PageHelper.startPage(pn, 5);
        List<Talentmanager> resultjianli = comTalentmanagerService.processgetjianliidbycomlev(combasemsgid);
        PageInfo<Jianli> pageInfo = new PageInfo(resultjianli, 5);

        model.addObject("pageInfo", pageInfo);
        model.addObject("combasemsgid", combasemsgid);
        model.addObject("resultjianli", resultjianli);
        model.setViewName("positions");
        return model;
    }

    @RequestMapping(value = "/deletBy/{jianliid}")
    public String deleteTalent(HttpServletRequest request, HttpServletResponse response,
                               @PathVariable("jianliid") int jianliid) {
        //  System.out.println("获取到的jianliid:"+jianliid);
        boolean result = comTalentmanagerService.deleteCollectById(jianliid);
        request.setAttribute("deleteResult", "true");
        return "positions";
    }

    /*这里是根据点击的星星来修改数据库Tanlentmanager表的level字段*/
    @RequestMapping(value = "/updateTalentmanagerByLevel/{level}&{jianliid}")
    public void updateTalentByLevel(@PathVariable("jianliid") int jianliid, @PathVariable("level") int level) {
        boolean updateResult = comTalentmanagerService.updateTalentmanagerByLevel(jianliid, level);
    }

}
