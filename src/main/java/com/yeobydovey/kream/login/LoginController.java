package com.yeobydovey.kream.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping("/login")
    public String loginForm() {
        return "login/login";
    }
}
