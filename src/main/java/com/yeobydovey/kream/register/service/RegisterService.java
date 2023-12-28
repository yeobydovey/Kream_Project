package com.yeobydovey.kream.register.service;


import com.yeobydovey.kream.register.dao.RegisterDto;

public interface RegisterService {
    boolean uidCheck(String user_id) throws Exception;

    boolean nickCheck(String user_nick) throws Exception;

    boolean phoneCheck(String user_phone) throws Exception;

    boolean emailCheck(String user_email) throws Exception;

    // 회원가입
    int signUp(RegisterDto rd)throws Exception;
}
