package com.findjob.dao;

import com.findjob.pojo.Account;
import org.apache.ibatis.annotations.Param;

public interface ComAccountDAO {

    public Account HRlogin(String phone, String password);//根据phone，password,用于企业HR的登陆

    public boolean HRrigister(Account account);//用于企业HR注册

    public int HRUploadPassword(@Param("newpassword") String newpassword, @Param("phone") String phone);   //HR修改个人登陆密码,返回影响条数

}
