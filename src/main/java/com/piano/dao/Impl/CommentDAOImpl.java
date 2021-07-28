/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao.Impl;


import com.piano.utils.HibernateUtil;
import com.piano.dao.CommentDAO;
import com.piano.entity.Comment;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public class CommentDAOImpl implements CommentDAO {

    @Override
    public void addComment(Comment comment) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();

            session.persist(comment);

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        
    }

    @Override
    public List<Comment> getCommentByProductID(int id,int page) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Comment> listCmt = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT cmt FROM Comment cmt WHERE cmt.product.productID=:id ORDER BY cmt.commentID DESC");
            query.setParameter("id", id);
            query.setFirstResult(page);
            query.setMaxResults(3);
            listCmt = query.getResultList();
            for (Comment comment : listCmt) {
                Hibernate.initialize(comment.getUser());
            }
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listCmt;
    }

    @Override
    public long getCommentCount(int p_id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        long count = (long) session.createQuery("SELECT COUNT(cmt.commentID) FROM Comment cmt WHERE cmt.product.productID=:p_id")
                .setParameter("p_id", p_id)
                .getSingleResult();
        return count;
    }

    @Override
    public double getRateAVG(int p_id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        double avg = (double) session.createQuery("SELECT AVG(cmt.rate) FROM Comment cmt WHERE cmt.product.productID=:p_id")
                .setParameter("p_id", p_id)
                .getSingleResult();
        return avg;
    }

    @Override
    public List<Comment> findCommentByProductID(int p_id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Comment> listCmt = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT cmt FROM Comment cmt WHERE cmt.product.productID=:id ORDER BY cmt.commentID DESC");
            query.setParameter("id", p_id);
            listCmt = query.getResultList();
            for (Comment comment : listCmt) {
                Hibernate.initialize(comment.getUser());
            }
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listCmt;
    }

    @Override
    public void deleteComment(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            Query q = session.createQuery("DELETE FROM Comment c WHERE c.commentID=:id").setParameter("id", id);
            q.executeUpdate();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }
    }

    

}
