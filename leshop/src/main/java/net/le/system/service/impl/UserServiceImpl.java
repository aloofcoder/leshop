package net.le.system.service.impl;

import net.le.system.dao.UserDao;
import net.le.system.entity.User;
import net.le.system.service.UserService;
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
}
