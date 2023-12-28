package com.yeobydovey.kream.register.service;

import com.yeobydovey.kream.register.dao.RegisterDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yeobydovey.kream.register.dao.RegisterDao;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StandardRegisterService implements RegisterService {

    @Autowired
    RegisterDao registerDao;


    @Override
    public boolean uidCheck(String user_id) throws Exception  {

        int result = registerDao.uidCheck(user_id);
        boolean isCheck = false;
        if(result > 0){
            isCheck = false;
        }else{
            isCheck = true;
        }

        return isCheck;
    }

    @Override
    public boolean nickCheck(String user_nick) throws Exception {

        int result = registerDao.nickCheck(user_nick);
        boolean isCheck = false;
        if(result > 0){
            isCheck = false;
        }else{
            isCheck = true;
        }
        return isCheck;
    }

    @Override
    public boolean phoneCheck(String user_phone) throws Exception {

        int result = registerDao.phoneCheck(user_phone);
        boolean isCheck = false;
        if(result > 0){
            isCheck = false;
        }else{
            isCheck = true;
        }
        return isCheck;
    }

    @Override
    public boolean emailCheck(String user_email) throws Exception {

        int result = registerDao.emailCheck(user_email);
        System.out.println("result 값 = "+result);
        boolean isCheck = false;
        if(result > 0){
            isCheck = false;
        }else{
            isCheck = true;
        }

        return isCheck;
    }
    
    // 회원가입
    @Transactional
    @Override
    public int signUp(RegisterDto rd) throws Exception {
        return registerDao.signUp(rd);
    }
}
