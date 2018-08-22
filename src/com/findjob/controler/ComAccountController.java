package com.findjob.controler;


import com.findjob.pojo.Account;
import com.findjob.service.ComAccountService;
import com.mysql.jdbc.StringUtils;
import com.sun.xml.internal.bind.v2.runtime.output.Encoded;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class ComAccountController {

    private ComAccountService comAccountService;   //关联AccountServiceImp这个service实现类

    //get,set方法
    public ComAccountService getComAccountService() {
        return comAccountService;
    }
    public void setComAccountService(ComAccountService comAccountService) {
        this.comAccountService = comAccountService;
    }

    /**
     * 该方法用于存放session中的account对象
     * @param request
     * @return
     */
    @ModelAttribute
    public Account init(HttpServletRequest request){
       HttpSession session= request.getSession();
       Account account=(Account) session.getAttribute("account");    //"account"
       System.out.println("每个方法执行前都会调用的方法，session中的对象信息为："+account);
       return account;
    }


    /**
     * 用于controll端的登陆处理方法；
     * @return "跳转界面"
     *
     * ModellAttribute:封装Account,将对象传到前端页面，以便于前端取值，相当于servlet的request
     */
    @RequestMapping("/comAccount/login")
    public String HRlogin(@ModelAttribute("Account") Account account, ModelMap modelMap, HttpServletRequest request){
        try {
            //获取到的account对象
            Account acc= getComAccountService().processLogin(account);
            System.out.println("获取到的对象是："+acc);

            /**
             * 账号不为空 并且账号的状态必须为 1;
             *  status==1:表示该公司账号已经激活；
             * status==0:表示该公司账号还未激活，不允许登陆;
             */
            if(acc!=null&&acc.getStatus()==1){

                /**
                 * modelMap.put("account",acc);  //用于转发参数到前端，只适用于request
                 * 将Account对象存在session中，用于前端的调用；
                 *  1：获取session;
                 */
                request.getSession().setAttribute("account",acc);
                request.setAttribute("loginSuccess",acc);
                return "comIndex";
            }
            else {
                return "login";
            }
        }catch (Exception e){
            e.printStackTrace();
            return "login";
        }
    }


    /**
     * 用于controll端的注册处理方法；
     * @param
     * @return
     */
    @RequestMapping("/comAccount/rigister")
    public String HRrigister(HttpServletRequest request){
        try {
            Account account=(Account) request.getSession().getAttribute("account");
            boolean result=getComAccountService().processRigister(account);
            if(!result){    //如果result==false; 就跳转到rigister界面
                return "rigister";
            }
            else{
                return "login";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "rigister";
        }
    }

    /**
     * 用于controll端的修改密码方法
     * @return
     */
    @RequestMapping(value="/comAccount/upload/{oldpassword}/{newpassword}")
    public String uploadPassword(HttpServletRequest request, @PathVariable("oldpassword") String oldpassword, @PathVariable("newpassword") String newpassword){
        System.out.println("进入了修改密码的方法");

        //获取session中的account对象
        Account account=(Account) request.getSession().getAttribute("account");
        System.out.println("修改方法中获取到了的Account对象："+account);
        try {
            /*判断当前 数据库中的密码 是否和 当前页面获取的密码 相同*/
            if(!account.getPassword().equals(oldpassword))
            {
                return "当前密码不正确";
            }
            else {
                /*将原密码修改为新的密码*/
                account.setPassword(newpassword);
                System.out.println("当前用户更新后的密码为："+account.getPassword());
                comAccountService.uploadPassword(account.getPassword(), account.getPhone());
                HttpSession session = request.getSession();
                session.setAttribute("accountFromUploadPassword", account);
                return "comIndex";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
