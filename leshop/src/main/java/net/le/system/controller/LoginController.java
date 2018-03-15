package net.le.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    /**
     *  访问登陆页面
     * @return
     */
    @RequestMapping("/login")
    public String login() {
        System.out.println("welcome to leshop system");
        return "main";
    }
}
