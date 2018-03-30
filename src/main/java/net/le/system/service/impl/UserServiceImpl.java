package net.le.system.service.impl;

import javafx.application.Application;
import net.le.exception.AppException;
import net.le.system.dao.UserDao;
import net.le.system.entity.User;
import net.le.system.service.UserService;
import org.omg.CORBA.portable.ApplicationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;


    /** 获取所有用户*/
    @Override
    public List<User> getAllUser() {
        List<User> list = dao.findAllUser();
        return list;
    }

    @Override
    public User checkUser(User user) {
        System.out.println(user);
        User userInfo = dao.findUserByUserName(user.getUserName());
        System.out.println(userInfo);
        if (userInfo == null) {
            throw new AppException("用户名不存在");
        }
        System.out.println(userInfo);
        if (!userInfo.getPassword().equals(user.getPassword())) {
            throw new AppException("密码错误");
        }
        return userInfo;
    }
}
