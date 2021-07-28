/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao.Impl;

import com.piano.utils.HibernateUtil;
import com.piano.dao.OrderDetailDAO;
import com.piano.entity.Orderdetail;
import com.piano.entity.Orderproduct;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Hibernate;
import org.springframework.stereotype.Repository;

import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author Administrator
 */
@Repository
public class OrderDetailDAOImpl implements OrderDetailDAO {

    @Override
    public void addOrderDetail(Orderdetail orderdetail) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            session.persist(orderdetail);
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }

    }

    @Override
    public List<Orderdetail> findOrderDetailByOrderID(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Orderdetail> list = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT o FROM Orderdetail o WHERE o.order.orderID=:id");
            query.setParameter("id", id);
            list = query.getResultList();
            for (Orderdetail orderdetail : list) {
                Hibernate.initialize(orderdetail.getProduct());
            }
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return list;
    }

    @Override
    public Orderproduct getOrderByOrderDetailID(int id) {
        Orderproduct orderproduct = new Orderproduct();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT o.order FROM Orderdetail o WHERE o.order.orderID=:id");
            query.setParameter("id", id);
            orderproduct = (Orderproduct) query.getSingleResult();
            Hibernate.initialize(orderproduct);
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return orderproduct;
    }

}
