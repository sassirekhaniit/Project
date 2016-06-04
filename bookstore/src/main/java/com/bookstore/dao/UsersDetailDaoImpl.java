package com.bookstore.dao;

import com.bookstore.dao.UsersDetailDao;
import com.bookstore.model.UserRole;
import com.bookstore.model.Cart;
import com.bookstore.model.UsersDetail;
import com.bookstore.model.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;



@Repository
@Transactional
public class UsersDetailDaoImpl implements UsersDetailDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addUser(UsersDetail usersDetail) {
        Session session = sessionFactory.getCurrentSession();

        usersDetail.getBillingAddress().setUsersDetail(usersDetail);
        usersDetail.getShippingAddress().setUsersDetail(usersDetail);

        session.saveOrUpdate(usersDetail);
        session.saveOrUpdate(usersDetail.getBillingAddress());
        session.saveOrUpdate(usersDetail.getShippingAddress());

        Users newUser = new Users();
        newUser.setUsername(usersDetail.getUsername());
        newUser.setPassword(usersDetail.getPassword());
        newUser.setEnabled(true);
        newUser.setUserId(usersDetail.getUserId());

        UserRole newUserRole = new UserRole();
        newUserRole.setUsername(usersDetail.getUsername());
        newUserRole.setRole("ROLE_USER");
        session.saveOrUpdate(newUser);
        session.saveOrUpdate(newUserRole);

        Cart newCart = new Cart();
        newCart.setUsersDetail(usersDetail);
        usersDetail.setCart(newCart);
        session.saveOrUpdate(usersDetail);
        session.saveOrUpdate(newCart);

        session.flush();
    }

    public UsersDetail getUserById (int userId) {
        Session session = sessionFactory.getCurrentSession();
        return (UsersDetail) session.get(UsersDetail.class, userId);
    }

    public List<UsersDetail> getAllUsers() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from UsersDetail");
        List<UsersDetail> usersDetail = query.list();

        return usersDetail;
    }

    public UsersDetail getUserByUsername (String username) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from UsersDetail where username = ?");
        query.setString(0, username);

        return (UsersDetail) query.uniqueResult();
    }
}
