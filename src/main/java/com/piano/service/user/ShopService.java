/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user;

import com.piano.entity.Category;
import com.piano.entity.Product;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface ShopService {
    public List<Category> AllCategories();
    public List<Product> SortProducts(String txt_sortby);
    public List<Product> AllProducts();
    public List<Product> SearchProductsByName(String txt_search);
    public List<Product> SearchProductsByCategory(int cateid);
    public List<Product> SearchProductsByManufacturer(String name);
    public List<Product> BestSeller();
    public List<Product> SearchProductsByPriceRange(String price_range);
}
