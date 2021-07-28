/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao.Impl;

import com.piano.utils.HibernateUtil;
import com.piano.dao.CategoryDAO;
import com.piano.entity.Category;
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
public class CategoryDAOImpl implements CategoryDAO{

    @Override
    public List<Category> getAllCategories() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Category> listC = new ArrayList<>();
        try {
            session.getTransaction().begin();
            
            Query<Category> query = session.createQuery("SELECT c FROM Category c");
            listC = query.getResultList();
            
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
        return listC;
    }

    @Override
    public Category findCategoryByID(int cateid) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Category category = new Category();
        try {
            session.getTransaction().begin();
            
            Query<Category> query = session.createQuery("SELECT c FROM Category c WHERE c.categoryID=:id");
            query.setParameter("id", cateid);
            category = query.getSingleResult();
            
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
        return category;
    }
    
}
