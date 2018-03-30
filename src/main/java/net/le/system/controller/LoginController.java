package net.le.system.controller;

import com.sun.istack.internal.Interned;
import net.le.system.entity.User;
import net.le.system.service.UserService;
import net.le.web.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LoginController {

    @Autowired
    private UserService serivce;

    /**
     *  访问登陆页面
     * @return
     */
    @RequestMapping("/toLogin")
    public String login() {
        System.out.println("welcome to leshop system");
        return "login";
    }

    @RequestMapping("/login")
    @ResponseBody
    public JsonResult toMain (User user, HttpSession session) {
        User userInfo = serivce.checkUser(user);
        session.setAttribute("user", userInfo);
        return new JsonResult();
    }
    @RequestMapping("/toMain")
    public String toMain () {
        return "main";
    }

}
