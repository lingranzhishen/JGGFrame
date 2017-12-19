package com.nccsbim.esms.dao;

import com.nccsbim.esms.model.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by tulada on 04/08/2015.
 */

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {
    public User findById(int id) {
        return getByKey(id);
    }

    public void saveUser(User user) {
        persist(user);
    }

    public void deleteEmployeeById(int id) {
        Query query = getSession().createSQLQuery("delete from User where user_id = :id");
        query.setInteger("id", id);
        query.executeUpdate();
    }

    @Override
    public void deleteUserByUsername(String username) {
        Query query = getSession().createSQLQuery("delete from User where username = :username");
        query.setString("username",username);
        query.executeUpdate();
    }

    @SuppressWarnings("unchecked")
    public List<User> findAllUser() {
        Criteria criteria = createEntityCriteria();
        return (List<User>) criteria.list();
    }

    public User findUsersByUsername(String username) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("username", username));
        return (User) criteria.uniqueResult();
    }
}
