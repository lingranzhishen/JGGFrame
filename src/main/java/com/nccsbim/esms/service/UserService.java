package com.nccsbim.esms.service;

import com.nccsbim.esms.model.User;

import java.util.List;

/**
 * Created by tulada on 04/08/2015.
 */
public interface UserService {
    User findById(int id);

    void saveUser(User user);

    void updateUser(User user);

    void updatePassword(User user);

    void deleteUserById(int id);

    void deleteUserByUsername(String username);

    List<User> findAllUser();

    User findUserByUsername(String username);

    boolean isEmployeeUsernameUnique(String username);
}
