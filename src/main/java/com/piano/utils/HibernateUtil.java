/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.utils;


import com.piano.entity.Category;
import com.piano.entity.Comment;
import com.piano.entity.Contact;
import com.piano.entity.News;
import com.piano.entity.Orderdetail;
import com.piano.entity.Orderproduct;
import com.piano.entity.Product;
import com.piano.entity.User;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

/**
 * @author Administrator
 */
public class HibernateUtil {

    private static final SessionFactory factory;

    static {
        Configuration conf = new Configuration();
        Properties properties = new Properties();
        properties.put(Environment.DIALECT, "org.hibernate.dialect.MySQLDialect");
        properties.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
        properties.put(Environment.URL, "jdbc:mysql://localhost:3306/pianohome");
        properties.put(Environment.USER, "root");
        properties.put(Environment.PASS, "251125");

        conf.setProperties(properties);

        conf.addAnnotatedClass(Product.class);
        conf.addAnnotatedClass(Category.class);
        conf.addAnnotatedClass(User.class);
        conf.addAnnotatedClass(Comment.class);
        conf.addAnnotatedClass(Contact.class);
        conf.addAnnotatedClass(Orderproduct.class);
        conf.addAnnotatedClass(Orderdetail.class);
        conf.addAnnotatedClass(News.class);

        ServiceRegistry registry = new StandardServiceRegistryBuilder().applySettings(conf.getProperties()).build();
        factory = conf.buildSessionFactory(registry);
    }

    public static SessionFactory getSessionFactory() {
        return factory;
    }
}