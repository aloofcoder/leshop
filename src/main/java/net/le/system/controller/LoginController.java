package net.le.system.controller;

import net.le.system.entity.User;
import net.le.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class LoginController {

    @Autowired
    private UserService serivce;

    /**
     *  访问登陆页面
     * @return
     */
    @RequestMapping("/login")
    public String login() {
        System.out.println("welcome to leshop system");
        return "login";
    }

    @RequestMapping("/getuserlist")
    @ResponseBody
    public List<User> getUserlist () {
        List<User> list = serivce.getAllUser();
        System.out.println(list);
        return list;
    }

    @RequestMapping("/getuserpage")
    public String getUserUI () {
        return "system/userlist";
    }
}
