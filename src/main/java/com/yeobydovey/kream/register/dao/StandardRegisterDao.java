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

        System.out.println("파라미터"+user_id);


        return session.selectOne(namespace+"user_idCheck", user_id);
    }
}
