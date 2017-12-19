package com.nccsbim.esms.service;

import com.nccsbim.esms.dao.UserDao;
import com.nccsbim.esms.model.Employee;
import com.nccsbim.esms.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by tulada on 04/08/2015.
 */


/*
Transactional when used it will begin transaction at every method
if success then commit the query and stop transcation
if failure rollback query ..
which leads to integrity of database
 */


@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;

    public User findById(int id) {
        return dao.findById(id);
    }

    public void saveUser(User user) {
        dao.saveUser(user);
    }

    public void updateUser(User user) {
        /*
        Since the method is running with Transaction, No need to call hibernate update exlicitly
        Just fetch the entity from db and update it with proper values within transaction.
        It will be updated in db once transaction ends
         */

        User entity = dao.findById(user.getUserId());
        if (entity != null) {
//            entity.setUsername(user.getUsername());
//            entity.setPassword(user.getPassword());
            entity.setUserType(user.getUserType());
            entity.setFirstname(user.getFirstname());
            entity.setMiddlename(user.getMiddlename());
            entity.setLastname(user.getLastname());
            entity.setEmail(user.getEmail());
            entity.setContact(user.getContact());
            entity.setGender(user.getGender());
            entity.setDOB(user.getDOB());
            entity.setEnrollmentDate(user.getEnrollmentDate());
            entity.setMaritalStatus(user.getMaritalStatus());
            entity.setAddress(user.getAddress());
            entity.setSalaryAmount(user.getSalaryAmount());
            entity.setCitYearly(user.getCitYearly());
            entity.setInsuranceYearly(user.getInsuranceYearly());
            entity.setPanNumber(user.getPanNumber());
            entity.setBankAccountNumber(user.getBankAccountNumber());
            entity.setTaxYearly(user.getTaxYearly());

        }
    }

    @Override
    public void updatePassword(User user) {
        User entity = dao.findById(user.getUserId());
        if (entity != null) {
            entity.setPassword(user.getPassword());
        }
    }

    public void deleteUserById(int id) {
        dao.deleteEmployeeById(id);
    }

    @Override
    public void deleteUserByUsername(String username) {
        dao.deleteUserByUsername(username);
    }

    public List<User> findAllUser() {
        return dao.findAllUser();
    }

    public User findUserByUsername(String username) {
        return dao.findUsersByUsername(username);
    }

    public boolean isEmployeeUsernameUnique(String username) {

        return findUserByUsername(username) == null;

    }
}
