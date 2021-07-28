/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user.Impl;


import com.piano.dao.CategoryDAO;
import com.piano.dao.ProductDAO;
import com.piano.entity.Category;
import com.piano.entity.Product;
import com.piano.service.user.ShopService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class ShopServiceImpl implements ShopService{
    @Autowired
    private ProductDAO productDAO;
    @Autowired
    private CategoryDAO categoryDAO;
    @Override
    public List<Product> SortProducts(String txt_sortby) {
        switch(txt_sortby){
            case "alphabet-A-Z":{
                return productDAO.sortProductsByNameASC();
            }
            case "alphabet-Z-A":{
                return productDAO.sortProductsByNameDESC();
            }
            case "price-low-to-high":{
                return productDAO.sortProductsByPriceASC();
            }
            case "price-high-to-low":{
                return productDAO.sortProductsByPriceDESC();
            }
            default:{
                return null;
            }
        }
    }

    @Override
    public List<Category> AllCategories() {
        return categoryDAO.getAllCategories();
    }

    @Override
    public List<Product> AllProducts() {
        return productDAO.getAllProducts();
    }

    @Override
    public List<Product> SearchProductsByName(String txt_search) {
        return productDAO.findProductsByName(txt_search);
    }

    @Override
    public List<Product> SearchProductsByCategory(int cateid) {
        return productDAO.findProductsByCategory(cateid);
    }

    @Override
    public List<Product> SearchProductsByManufacturer(String name) {
        return productDAO.findProductsByManufacturer(name);
    }

    @Override
    public List<Product> BestSeller() {
        return productDAO.getBestSeller();
    }

    @Override
    public List<Product> SearchProductsByPriceRange(String price_range) {
        String price[] = price_range.split("-");
        switch(price_range){
            case "1":{
                return productDAO.getProductsByPriceBelow();
            }
            case "2":{
                return productDAO.getProductsByPriceAbove();
            }
            default:{
                return productDAO.getProductsByPriceRange(Double.parseDouble(price[0]), Double.parseDouble(price[1]));
            }
        }
    }
    
}
