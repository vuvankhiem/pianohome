/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user;


import com.piano.entity.Category;
import com.piano.entity.News;
import com.piano.entity.Product;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface HomeService{
    public List<Product> AllProducts();
    public List<Product> NewProduct();
    public List<Product> TopSeller();
    public List<Category> ALLCategories();
    public List<Product> HotSale();
    public List<News> RecentNews();
}
