package com.findjob.dao;

import com.findjob.pojo.Account;
import org.springframework.stereotype.Component;

@Component("comAccountDAO")
public class ComAccountDAOimpl extends BaseDAO implements ComAccountDAO {


    /**
     * 用于实现类处理登陆的方法
     * @param phone
     * @param password
     * @return account
     */
    public Account HRlogin(String phone, String password) {
        //先获取SqlSession,获取AccountDAO类中的自定义的登陆方法
        Account account=getSqlSession().getMapper(ComAccountDAO.class).HRlogin(phone,password);

        //用于测试输出account
        System.out.println(account);
        return account;
    }


    /**
     * 用于实现类处理注册的方法
     * @param account
     * @return
     */
    public boolean HRrigister(Account account) {
        boolean result=getSqlSession().getMapper(ComAccountDAO.class).HRrigister(account);
        System.out.println("注册结果："+result);
        return result;
    }

    /**
     * 修改密码
     * @param newpassword
     * @param phone
     * @return
     */
    public int HRUploadPassword(String newpassword, String phone) {
        return getSqlSession().getMapper(ComAccountDAO.class).HRUploadPassword(newpassword,phone);
    }


}
