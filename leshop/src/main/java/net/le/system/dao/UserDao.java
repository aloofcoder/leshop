package net.le.system.dao;

import net.le.system.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserDao {
    List<User> findAllUser();
}
