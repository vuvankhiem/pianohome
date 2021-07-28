/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin.Impl;


import com.piano.dao.CategoryDAO;
import com.piano.dao.ProductDAO;
import com.piano.entity.Category;
import com.piano.entity.Product;
import com.piano.service.admin.ManageProductService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class ManageProductServiceImpl implements ManageProductService{

    @Autowired
    ProductDAO productDAO;
    @Autowired
    CategoryDAO categoryDAO;
    @Override
    public List<Product> getProductbyPage(int page) {
        return productDAO.getProductByPage((page-1)*10);
    }

    @Override
    public int endpage(long count) {
        int endpage = 0;
        endpage = (int) (count/10);
        if(count%10!=0){
            endpage++;
        }
        return endpage;
    }

    @Override
    public long countProduct() {
        return productDAO.countProduct();
    }

    @Override
    public void deleteProduct(int i) {
        productDAO.deleteProduct(i);
    }

    @Override
    public Category findCategoryByID(int cateid) {
        return categoryDAO.findCategoryByID(cateid);
    }

    @Override
    public void saveProduct(Product product) {
        productDAO.saveProduct(product);
    }

    @Override
    public Product getProductbyId(int i) {
        return productDAO.findProductByID(i);
    }

    @Override
    public void updateProduct(Product product) {
        productDAO.updateProduct(product);
    }

    @Override
    public List<Product> findProductsByName(String search) {
        return productDAO.findProductsByName(search);
    }
    
}
