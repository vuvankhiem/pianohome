/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin;


import com.piano.entity.Category;
import com.piano.entity.Product;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface ManageProductService {
    public List<Product>  getProductbyPage(int page);
    public Product getProductbyId(int p_id);
    public int endpage(long count);
    public long countProduct();
    public void deleteProduct(int id);
    public Category findCategoryByID(int cateid);
    public void saveProduct(Product product);
    public void updateProduct(Product product);
    public List<Product> findProductsByName(String txt_search);
}
