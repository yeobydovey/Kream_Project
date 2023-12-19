package com.yeobydovey.kream.register.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yeobydovey.kream.register.dao.RegisterDao;

@Service
public class StandardRegisterService implements RegisterService {

    @Autowired
    RegisterDao registerDao;


    @Override
    public boolean uidCheck(String user_id) throws Exception  {

        int result = registerDao.uidCheck(user_id);
        System.out.println("결과값"+result);
        boolean isCheck = false;
        if(result > 0){
            isCheck = false;
        }else{
            isCheck = true;
        }

        return isCheck;
    }
}
