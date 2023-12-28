package com.yeobydovey.kream.register.dao;

import org.apache.ibatis.session.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StandardRegisterDao implements RegisterDao {

    @Autowired
    private SqlSession session;
    private static String namespace = "com.yeobydovey.kream.register.dao.RegisterMapper.";


    @Override
    public int uidCheck(String user_id) throws Exception {

        System.out.println("dao 파라미터 user id "+user_id);


        return session.selectOne(namespace+"user_idCheck", user_id);
    }

    @Override
    public int nickCheck(String user_nick) throws Exception {

        System.out.println("dao파라미터 user nick "+user_nick);


        return session.selectOne(namespace+"user_nickCheck", user_nick);
    }

    @Override
    public int phoneCheck(String user_phone) throws Exception {

        System.out.println("dao파라미터 user phone "+user_phone);

        return session.selectOne(namespace+"user_phoneCheck", user_phone);
    }

    @Override
    public int emailCheck(String user_email) throws Exception {

        System.out.println("dao파라미터 user email "+user_email);

        return session.selectOne(namespace+"user_emailCheck", user_email);
    }

    @Override
    public int signUp(RegisterDto rd) throws Exception {

        System.out.println("dao파라미터 signUp = " +rd);

        return session.insert(namespace+"signUp", rd);
    }
}
