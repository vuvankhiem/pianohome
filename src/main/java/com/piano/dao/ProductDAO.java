/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao;


import com.piano.entity.Product;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface ProductDAO {
    public List<Product> getAllProducts();
    public List<Product> getBestSeller();
    public List<Product> getProductsByPriceBelow();
    public List<Product> getProductsByPriceAbove();
    public long getQuantySold(int id);
    
    
    public Product findProductByID(int id);
    public List<Product> getProductsByPriceRange(double price1,double price2);
    public List<Product> findProductNewByCateID(int cate_id);
    public List<Product> findProductsByName(String name);
    public List<Product> findProductsByCategory(int cate_id);
    public List<Product> findProductsByManufacturer(String name);
    public List<Product> findProductsSale();
    public List<Product> findProductsRelated(int id);
    public float findRateAVGByID(int id);
    public List<Product> findProductsHotSale();
    public List<Product> findProductsNew();
    
    public List<Product> getProductByPage(int page);
    
    
    public List<Product> sortProductsByNameASC();
    public List<Product> sortProductsByNameDESC();
    public List<Product> sortProductsByPriceASC();
    public List<Product> sortProductsByPriceDESC();
    
    
    
    public void updateTimeSale(int id);
    public void updateRateAVG(float rate,int id);
    public void updateProduct(Product product);
    
    public void saveProduct(Product product);
    
    public void deleteProduct(int id);
    
    public long countProduct();
    
    
}
