package com.yeobydovey.kream.shop.dao;

import java.util.Date;

public class ProductDto {
    private int p_seq;
    private String p_brand;
    private String p_eng_name;
    private String p_kr_name;
    private String p_model_no;
    private Date p_release_date;
    private int p_heart;
    private String p_root;


    public String getP_root() {
        return p_root;
    }

    public void setP_root(String p_root) {
        this.p_root = p_root;
    }


    public int getP_seq() {
        return p_seq;
    }

    public void setP_seq(int p_seq) {
        this.p_seq = p_seq;
    }

    public String getP_brand() {
        return p_brand;
    }

    public void setP_brand(String p_brand) {
        this.p_brand = p_brand;
    }

    public String getP_eng_name() {
        return p_eng_name;
    }

    public void setP_eng_name(String p_eng_name) {
        this.p_eng_name = p_eng_name;
    }

    public String getP_kr_name() {
        return p_kr_name;
    }

    public void setP_kr_name(String p_kr_name) {
        this.p_kr_name = p_kr_name;
    }

    public String getP_model_no() {
        return p_model_no;
    }

    public void setP_model_no(String p_model_no) {
        this.p_model_no = p_model_no;
    }

    public Date getP_release_date() {
        return p_release_date;
    }

    public void setP_release_date(Date p_release_date) {
        this.p_release_date = p_release_date;
    }

    public int getP_heart() {
        return p_heart;
    }

    public void setP_heart(int p_heart) {
        this.p_heart = p_heart;
    }
}
