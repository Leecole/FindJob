package com.findjob.service;

import com.findjob.dao.ComAccountDAO;
import com.findjob.pojo.Account;
import org.springframework.stereotype.Component;

@Component("comAccountService")
public class ComAccountServiceImp implements ComAccountService {

    private ComAccountDAO comAccountDAO;//关联AccountDao接口

    /**
     * AccountDAO的set方法
     * @param comAccountDAO
     */
    public void setComAccountDAO(ComAccountDAO comAccountDAO) {
        this.comAccountDAO = comAccountDAO;
    }

    /**
     * AccountDAO的get方法
     * @return comAccountDAO
     */
    public ComAccountDAO getComAccountDAO() {
        return comAccountDAO;
    }

    /**
     * 处理登陆的方法
     * @return Account对象(account1)
     */
    public Account processLogin(Account account) {

        //调用AccountDao中的登陆方法,获取HR在界面输入的电话号和密码
        Account account1= comAccountDAO.HRlogin(account.getPhone(),account.getPassword());
        System.out.println(account1);
        //将获取到的信息封装成一个Account对象，存在a对象中
        return account1;
    }

    /**
     * 处理注册的方法
     * @param account
     * @return true or false
     */
    public boolean processRigister(Account account) {
        boolean flag=comAccountDAO.HRrigister(account);
        return flag;
    }

    /**
     * 修改密码的方法
     * @param newpassword
     * @return
     */
    public int uploadPassword(String newpassword, String phone) throws Exception {
        return comAccountDAO.HRUploadPassword(newpassword,phone);
    }
}
