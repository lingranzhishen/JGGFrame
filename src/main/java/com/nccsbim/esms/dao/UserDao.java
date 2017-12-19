package com.nccsbim.esms.dao;

import com.nccsbim.esms.model.User;

import java.util.List;

/**
 * Created by tulada on 04/08/2015.
 */
public interface UserDao {
    User findById(int id);

    void saveUser(User user);

    void deleteEmployeeById(int id);

    void deleteUserByUsername(String username);

    List<User> findAllUser();

    User findUsersByUsername(String name);
}
