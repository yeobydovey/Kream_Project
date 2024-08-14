package com.yeobydovey.kream.shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StandardProductDao implements ProductDao{

    @Autowired
    private SqlSession session;
    private static String namespace = "com.yeobydovey.kream.shop.dao.ProductMapper.";


    @Override
    public List<ProductDto> listPage() throws Exception {
        return session.selectList(namespace+"listPage");
    }

    @Override
    public String productImgFind(int p_seq) throws Exception {
        System.out.println("dao실행");
        return session.selectOne(namespace+"productImgFind",p_seq);
    }

    @Override
    public int productCreate(ProductDto productDto) throws Exception {
        System.out.println("productCreate 실행");

        return session.insert(namespace+"productCreate", productDto);
    }


}
