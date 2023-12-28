package com.yeobydovey.kream.register.dao;

public interface RegisterDao {

    int uidCheck(String user_id) throws Exception;

    int nickCheck(String user_nick) throws Exception;

    int phoneCheck(String user_phone) throws Exception;

    int emailCheck(String user_email) throws Exception;

    int signUp(RegisterDto rd)throws Exception;
}
