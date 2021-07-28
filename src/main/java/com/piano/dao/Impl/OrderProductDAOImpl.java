/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao.Impl;


import com.piano.utils.HibernateUtil;
import com.piano.dao.OrderProductDAO;
import com.piano.entity.Orderproduct;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public class OrderProductDAOImpl implements OrderProductDAO {

    @Override
    public void addOrder(Orderproduct orderproduct) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            session.persist(orderproduct);
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
    }

    @Override
    public List<Orderproduct> findOrderByPage(int page) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Orderproduct> list = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT o FROM Orderproduct o ORDER BY o.statusOrder ASC");
            query.setFirstResult(page);
            query.setMaxResults(10);
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
    public long countOrder() {
        long count = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT COUNT(o.orderID) FROM Orderproduct o");
            count = (long) query.getSingleResult();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
        return count;
    }

    @Override
    public Orderproduct findOrderByID(int id) {
        Orderproduct orderproduct = new Orderproduct();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            Query q = session.createQuery("SELECT o FROM Orderproduct o WHERE o.orderID=:id");
            q.setParameter("id", id);
            orderproduct = (Orderproduct) q.getSingleResult();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
        return orderproduct;
    }

    @Override
    public void updateOrder(Orderproduct orderproduct) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            session.update(orderproduct);
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
    }

    @Override
    public void deleteOrder(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            session.createQuery("DELETE FROM Orderdetail oD WHERE oD.order.orderID=:id").setParameter("id", id).executeUpdate();
            session.createQuery("DELETE FROM Orderproduct oP WHERE oP.orderID=:id").setParameter("id", id).executeUpdate();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
    }

    @Override
    public List<Orderproduct> findOrderByStatus(int status) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Orderproduct> list = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT o FROM Orderproduct o WHERE o.statusOrder=:status ORDER BY o.orderID DESC");
            query.setParameter("status", status);
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
    public long countProductByOrderDate(String date) {
        long count = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT COUNT(o.orderID) FROM Orderproduct o WHERE o.orderDate LIKE: date ");
            query.setParameter("date", "%"+date+"%");
            count = (long) query.getSingleResult();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
        return count;
    }

    @Override
    public double totalSalesByOrderDate(String date) {
        double total = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT SUM(o.totalPrice) FROM Orderproduct o WHERE o.statusOrder=3 AND o.orderDate LIKE: date");
            query.setParameter("date", "%"+date+"%");
            total = (double) query.getSingleResult();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
        return total;
    }

    @Override
    public int[] countOrderByStatus() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        int arr[] = new int[5];
        long count = 0;
        try {
            session.getTransaction().begin();
            for (int i = 1; i <= 5; i++) {
                count = (long) session.createQuery("SELECT COUNT(c.orderID) FROM Orderproduct c WHERE c.statusOrder=:i").setParameter("i", i).getSingleResult();
                arr[i-1] = (int) count;
            }
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return arr;
    }

}
