/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user.Impl;


import com.piano.dao.CategoryDAO;
import com.piano.dao.NewsDAO;
import com.piano.dao.ProductDAO;
import com.piano.entity.Category;
import com.piano.entity.News;
import com.piano.entity.Product;
import com.piano.service.user.HomeService;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class HomeServiceImpl implements HomeService{
    @Autowired
    private ProductDAO productDAO;
    @Autowired
    private CategoryDAO categoryDAO;
    @Autowired
    private NewsDAO newsDAO;
    @Override
    public List<Product> AllProducts() {
        return productDAO.getAllProducts();
    }

    @Override
    public List<Category> ALLCategories() {
        return categoryDAO.getAllCategories();
    }

    @Override
    public List<Product> NewProduct() {
        List<Product> list = new ArrayList<>();
        int n =  ALLCategories().size();
        for (int i = 1; i <=n; i++) {
            List<Product> listP = productDAO.findProductNewByCateID(i);
            for (Product product : listP) {
                list.add(product);               
            }
        }
        return list;
    }

    @Override
    public List<Product> TopSeller() {
        return productDAO.getBestSeller();
    }

    @Override
    public List<Product> HotSale() {
        return productDAO.findProductsSale();
    }

    @Override
    public List<News> RecentNews() {
        return newsDAO.findRecentPost();
    }

    
    
}
