/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao.Impl;


import com.piano.utils.HibernateUtil;
import com.piano.dao.UserDAO;
import com.piano.entity.User;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.query.Query;

import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public class UserDAOImpl implements UserDAO{

    
    
    @Override
    public User getUserByEmail(String email) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        User user = new User();
        try {
            session.getTransaction().begin();

            Query query = session.createQuery("SELECT u FROM User u WHERE u.email=:e");
            
            query.setParameter("e", email);
            
            user = (User) query.getSingleResult();

            session.getTransaction().commit();
            return user;
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return user;
    }

    @Override
    public void addUser(User user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();

            session.persist(user);
            
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        
    }

    @Override
    public void updateUser(User user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();

            session.update(user);
            
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
    }

    @Override
    public User getUserByID(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        User user = new User();
        try {
            session.getTransaction().begin();

            Query query = session.createQuery("SELECT u FROM User u WHERE u.userID=:id");
            
            query.setParameter("id", id);
            
            user = (User) query.getSingleResult();

            session.getTransaction().commit();
            return user;
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return user;
    }

    @Override
    public List<User> findUsersByPage(int page) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<User> list = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT u FROM User u WHERE u.userID!=1");
            query.setFirstResult(page);
            query.setMaxResults(9);
            list = query.getResultList();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
        return list;
    }

    @Override
    public long countUsers() {
        long count = 0;
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            count = (long) session.createQuery("SELECT COUNT(u.userID) FROM User u WHERE u.userID!=1").getSingleResult();
        }
        return count;
    }

    @Override
    public List<User> findUser(String name) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<User> list = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT u FROM User u WHERE u.firstName=:name OR u.lastName=:name OR u.email=:name AND u.userID!=1");
            query.setParameter("name", name);
            list = query.getResultList();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
        return list;
    }
    
    

}
