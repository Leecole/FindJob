package com.findjob.service;

import com.findjob.pojo.Account;

public interface ComAccountService {

    public Account processLogin(Account account) throws  Exception;     //处理登陆的service
    public boolean processRigister(Account account) throws  Exception;  //处理注册的service
    public int uploadPassword(String  newpassword,String phone) throws Exception;    //修改HR密码的service

}

