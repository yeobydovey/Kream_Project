package com.yeobydovey.kream.register.dao;

import java.util.Date;

public class RegisterDto {

    private int user_seq;
    private String user_id;
    private String user_pw;
    private String user_nick;
    private String user_email;
    private int user_auth;
    private String user_addr;
    private String user_addrDetail;
    private String user_postCode;

    public int getUser_seq() {
        return user_seq;
    }

    public void setUser_seq(int user_seq) {
        this.user_seq = user_seq;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_pw() {
        return user_pw;
    }

    public void setUser_pw(String user_pw) {
        this.user_pw = user_pw;
    }

    public String getUser_nick() {
        return user_nick;
    }

    public void setUser_nick(String user_nick) {
        this.user_nick = user_nick;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public int getUser_auth() {
        return user_auth;
    }

    public void setUser_auth(int user_auth) {
        this.user_auth = user_auth;
    }

    public String getUser_addr() {
        return user_addr;
    }

    public void setUser_addr(String user_addr) {
        this.user_addr = user_addr;
    }

    public String getUser_addrDetail() {
        return user_addrDetail;
    }

    public void setUser_addrDetail(String user_addrDetail) {
        this.user_addrDetail = user_addrDetail;
    }

    public String getUser_postCode() {
        return user_postCode;
    }

    public void setUser_postCode(String user_postCode) {
        this.user_postCode = user_postCode;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public int getUser_payment() {
        return user_payment;
    }

    public void setUser_payment(int user_payment) {
        this.user_payment = user_payment;
    }

    public Date getUser_date() {
        return user_date;
    }

    public void setUser_date(Date user_date) {
        this.user_date = user_date;
    }

    private String user_phone;
    private int user_payment;
    private Date user_date;


}
