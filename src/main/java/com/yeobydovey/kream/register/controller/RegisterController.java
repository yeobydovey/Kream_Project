package com.yeobydovey.kream.register.controller;

import com.yeobydovey.kream.register.service.RegisterService;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    RegisterService registerService;



    @GetMapping("/registerForm")
    public String registerForm() {

        return "register/registerForm";
    }

    @PostMapping("/register")
    public String register(){


        return "register/registerForm";
    }




    // 아이디 중복 체크
    @PostMapping ("/uidCheck")
    @ResponseBody
    public boolean uidCheck(String user_id) throws Exception{
        System.out.println("uidCheck : "+user_id);


            boolean result = registerService.uidCheck(user_id);
            System.out.println("result = "+result);
            return result;


    }

}
