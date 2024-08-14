package com.yeobydovey.kream.shop.service;

import com.yeobydovey.kream.shop.dao.ProductDto;

import java.util.List;

public interface ProductService {

     List<ProductDto> listPage() throws Exception;

     String productImgFind(int p_seq) throws Exception;

     int productCreate(ProductDto productDto) throws Exception;
}
