package com.yeobydovey.kream.shop.service;

import com.yeobydovey.kream.register.dao.RegisterDao;
import com.yeobydovey.kream.shop.dao.ProductDao;
import com.yeobydovey.kream.shop.dao.ProductDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StandardProductService implements ProductService{

    @Autowired
    ProductDao productDao;

    @Override
    public List<ProductDto> listPage() throws Exception {
        return productDao.listPage();
    }

    @Override
    public String productImgFind(int p_seq) throws Exception {
        System.out.println("서비스실행 "+p_seq);

        return productDao.productImgFind(p_seq);
    }

    @Override
    public List<String> brandList() throws Exception {
        return productDao.brandList();
    }

    @Override
    public int productCreate(ProductDto productDto) throws Exception {
        return productDao.productCreate(productDto);
    }
}
