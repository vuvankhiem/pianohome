/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao.Impl;

import com.piano.utils.HibernateUtil;
import com.piano.dao.ProductDAO;
import com.piano.entity.Product;
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
public class ProductDAOImpl implements ProductDAO {

    @Override
    public List<Product> getAllProducts() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p ORDER BY p.saleTime DESC");
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> findProductNewByCateID(int cate_id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p WHERE p.category.categoryID="
                    + cate_id
                    + " ORDER BY p.productID DESC");
            query.setMaxResults(5);
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> getBestSeller() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p ORDER BY p.quantitySold DESC");
            query.setMaxResults(5);
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> sortProductsByNameASC() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p ORDER BY p.productName ASC");
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> sortProductsByNameDESC() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p ORDER BY p.productName DESC");
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> sortProductsByPriceASC() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p ORDER BY p.price ASC");
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> sortProductsByPriceDESC() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p ORDER BY p.price DESC");
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> findProductsByName(String txt_search) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query<Product> query = session.createQuery("SELECT p FROM Product p WHERE p.description LIKE: nameP OR p.productName LIKE: nameP");
            query.setParameter("nameP", "%" + txt_search + "%");
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> findProductsByCategory(int cateid) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p WHERE p.category.categoryID =: cateid");
            query.setParameter("cateid", cateid);
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> getProductsByPriceBelow() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p WHERE p.price<=5000000");
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> getProductsByPriceAbove() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p WHERE p.price>=500000000");
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> findProductsByManufacturer(String name) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Product> getProductsByPriceRange(double price1, double price2) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p WHERE p.price BETWEEN :price1 AND :price2");
            query.setParameter("price1", price1);
            query.setParameter("price2", price2);
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public Product findProductByID(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Product p = new Product();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p WHERE p.productID=:id");
            query.setParameter("id", id);
            p = query.getSingleResult();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return p;
    }

    @Override
    public void updateTimeSale(int p_id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("UPDATE Product p SET p.saleTime=null,p.sale = 0 WHERE p.productID=:id");
            query.setParameter("id", p_id);
            query.executeUpdate();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
    }

    @Override
    public List<Product> findProductsSale() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("SELECT p FROM Product p WHERE p.saleTime IS NOT NULL ORDER BY p.saleTime DESC");
            listP = query.getResultList();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> findProductsRelated(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();
            org.hibernate.query.Query q = session.createQuery("SELECT p1.category.categoryID FROM Product p1 WHERE p1.productID=:p_id").setParameter("p_id", id);
            int cateID = (int) q.getSingleResult();
            org.hibernate.query.Query query = session.createQuery("SELECT p FROM Product p WHERE  p.category.categoryID =:cateID AND p.productID!=:p_id ORDER BY RAND()  ");
            query.setParameter("cateID", cateID);
            query.setParameter("p_id", id);
            query.setMaxResults(6);
            listP = query.getResultList();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public float findRateAVGByID(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        float rateAVG = 0;
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT p.rateAVG FROM Product p WHERE p.productID=:id")
                    .setParameter("id", id);
            rateAVG = (float) query.getSingleResult();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return rateAVG;
    }

    @Override
    public void updateRateAVG(float rateAVG, int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();

            Query<Product> query = session.createQuery("UPDATE Product p SET p.rateAVG=:rateAVG WHERE p.productID=:id");
            query.setParameter("id", id);
            query.setParameter("rateAVG", rateAVG);
            query.executeUpdate();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
    }

    @Override
    public List<Product> getProductByPage(int page) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT p FROM Product p");
            query.setFirstResult(page);
            query.setMaxResults(10);
            listP = query.getResultList();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public long countProduct() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        long count = 0;
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT COUNT(p) FROM Product p");
            count = (long) query.getSingleResult();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return count;
    }

    @Override
    public void updateProduct(Product product) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();

            session.update(product);

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
    }

    @Override
    public void saveProduct(Product product) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();

            session.persist(product);

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
    }

    @Override
    public void deleteProduct(int i) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();

            session.createQuery("DELETE FROM Comment cmt WHERE cmt.product.productID=:id").setParameter("id", i).executeUpdate();
            session.createQuery("DELETE FROM Product p WHERE p.productID=:id").setParameter("id", i).executeUpdate();

            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
    }

    @Override
    public long getQuantySold(int id) {
        long quantySold = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();

            Query query = session.createQuery("SELECT p.quantitySold FROM Product p WHERE p.productID=:id");
            query.setParameter("id", id);
            quantySold = (long) query.getSingleResult();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return quantySold;
    }

    @Override
    public List<Product> findProductsHotSale() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT p FROM Product p WHERE p.sale!=0 ORDER BY p.sale DESC ");
            query.setMaxResults(6);
            listP = query.getResultList();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

    @Override
    public List<Product> findProductsNew() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Product> listP = new ArrayList<>();
        try {
            session.getTransaction().begin();
            Query query = session.createQuery("SELECT p FROM Product p ORDER BY p.productID DESC");
            query.setMaxResults(5);
            listP = query.getResultList();
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return listP;
    }

}
