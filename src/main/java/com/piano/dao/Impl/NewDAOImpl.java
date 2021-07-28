/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao.Impl;


import com.piano.utils.HibernateUtil;
import com.piano.dao.NewsDAO;
import com.piano.entity.News;
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
public class NewDAOImpl implements NewsDAO {

    @Override
    public List<News> getAllNews() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<News> listNews = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT news FROM News news ORDER BY news.newsID DESC");
            listNews = query.getResultList();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listNews;
    }

    @Override
    public void addNews(News news) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            session.persist(news);
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
    }

    @Override
    public void deleteNews(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            session.createQuery("DELETE FROM News n WHERE n.newsID=:id").setParameter("id", id).executeUpdate();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
    }

    @Override
    public News findNewsById(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        News n = new News();
        try {
            session.getTransaction().begin();
            n = (News) session.createQuery("SELECT n FROM News n WHERE n.newsID=:id").setParameter("id", id).getSingleResult();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return n; 
    }

    @Override
    public void updateNews(News news) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            session.update(news);
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
    }

    @Override
    public List<News> findNewsBySearch(String txt_search) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<News> list = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT n FROM News n WHERE n.title LIKE:txt OR n.shortContent LIKE:txt OR n.category LIKE:txt");
            query.setParameter("txt", "%"+txt_search+"%");
            list = query.getResultList();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return list;
    }

    @Override
    public List<News> findNewsByPage(int page) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<News> list = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT n FROM News n ORDER BY n.newsID DESC");
            query.setFirstResult(page);
            query.setMaxResults(3);
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
    public List<News> findNewsByCate(String cate) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<News> list = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT n FROM News n WHERE n.category=:cate");
            query.setParameter("cate", cate);
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
    public long countNews() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        long count = 0;
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT COUNT(n.newsID) FROM News n");
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
    public List<News> findRelatedNews(int id,String cate) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<News> list = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT n FROM News n WHERE n.category=:cate AND n.newsID!=:id ORDER BY RAND() ");
            query.setParameter("cate", cate);
            query.setParameter("id", id);
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
    public List<News> findRecentPost() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<News> list = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT n FROM News n ORDER BY n.newsID DESC ");
            query.setMaxResults(5);
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
