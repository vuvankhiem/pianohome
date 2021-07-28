/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao.Impl;


import com.piano.utils.HibernateUtil;
import com.piano.dao.ContactDAO;
import com.piano.entity.Contact;
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
public class ContactDAOImpl implements ContactDAO{

    @Override
    public void addContact(Contact contact) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            session.persist(contact);
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
    }

    @Override
    public List<Contact> findAllContacts() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Contact> list = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT c FROM Contact c ORDER BY c.contactID DESC");
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
    public void deleteContact(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("DELETE FROM Contact c WHERE c.contactID=:id");
            query.setParameter("id", id);
            query.executeUpdate();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
    }

    @Override
    public void deleteAllContact() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("DELETE FROM Contact c ");
            query.executeUpdate();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally{
            session.close();
        }
    }

    @Override
    public long countContactStatus() {
        long count = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT COUNT(c.contactID) FROM Contact  c WHERE c.status=0");
            count = (long)query.getSingleResult();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }finally {
            session.close();
        }
        return count;
    }

    @Override
    public void updateContact(Contact contact) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            session.update(contact);
            session.getTransaction().commit();
        }catch (Exception e){
            session.getTransaction().rollback();
        }finally {
            session.close();
        }
    }

    @Override
    public Contact findContactByID(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Contact contact = new Contact();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT c from Contact c where c.contactID=:id");
            query.setParameter("id",id);
            contact = (Contact) query.getSingleResult();
            session.getTransaction().commit();
        }catch (Exception e){
            session.getTransaction().rollback();
        }finally {
            session.close();
        }
        return contact;
    }

}
