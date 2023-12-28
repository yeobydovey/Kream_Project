package com.yeobydovey.kream.register.controller;

import com.yeobydovey.kream.register.dao.RegisterDto;
import com.yeobydovey.kream.register.service.RegisterService;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;

@Controller
@RequestMapping("/register")
public class RegisterController {

    @Inject
    JavaMailSender mailSender;

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

    // 닉네임 중복 체크
    @PostMapping ("/nickCheck")
    @ResponseBody
    public boolean nickCheck(String user_nick) throws Exception{
        System.out.println("nickCheck : "+user_nick);


        boolean result = registerService.nickCheck(user_nick);
        System.out.println("result = "+result);
        return result;

    }

    // 휴대폰 번호 중복 체크
    @PostMapping ("/phoneCheck")
    @ResponseBody
    public boolean phoneCheck(String user_phone) throws Exception{
        System.out.println("phoneCheck : "+user_phone);


        boolean result = registerService.phoneCheck(user_phone);
        System.out.println("result = "+result);
        return result;

    }


    // 이메일 중복 체크
    @PostMapping ("/emailCheck")
    @ResponseBody
    public boolean emailCheck(String user_email) throws Exception{
        System.out.println("phoneCheck : "+user_email);


        boolean result = registerService.emailCheck(user_email);
        System.out.println("result = "+result);
        return result;

    }


    // 이메일 인증
    @GetMapping("/acceptEmail")
    @ResponseBody
    public String acceptEmail(@RequestParam("user_email") String user_email) throws Exception{

        System.out.println("acceptEmail "+user_email);
        String code = "";
        MimeMessage message = mailSender.createMimeMessage();
        System.out.println("message : " + message);
        MimeMessageHelper messageHelper
                = new MimeMessageHelper(message,"UTF-8");
        messageHelper.setFrom("flyingcorps2@gmail.com");
        messageHelper.setTo(user_email);
        messageHelper.setSubject("이메일 인증 코드 확인");

        for(int i=0; i<5; i++) {
            // 0 ~ 0.99999
            code += (int)(Math.random()*10);
        }
        System.out.println(code);

        String msg = "다음 인증 코드를 입력해주세요.<h3>"+code+"</h3>";
        messageHelper.setText(msg,true);
        mailSender.send(message);


        return code;
    }


    @PostMapping("/signUp")
    public String signUp(RegisterDto rd, RedirectAttributes rttr){

        System.out.println(rd);
        try{
            if(registerService.signUp(rd) != 1)
            throw new Exception("회원가입 실패");


            rttr.addFlashAttribute("message","회원가입 성공");
            return "redirect:/login/login";
        }catch (Exception e){
            e.printStackTrace();
        }
        return "login/login";

    }

}
