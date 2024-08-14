package com.yeobydovey.kream.shop.dao;

import java.util.List;

public interface ProductDao {

    List<ProductDto> listPage() throws Exception;

    String productImgFind(int p_seq) throws Exception;

    int productCreate(ProductDto productDto) throws Exception;
}
