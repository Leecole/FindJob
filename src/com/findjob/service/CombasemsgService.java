package com.findjob.service;

import com.findjob.pojo.Combasemsg;

import java.util.List;

public interface CombasemsgService {
    public List<Combasemsg> showComMessage() throws Exception;
    public Combasemsg comInfo(int accountid) throws  Exception;
    public Combasemsg getComid(int useraccountid);
}
