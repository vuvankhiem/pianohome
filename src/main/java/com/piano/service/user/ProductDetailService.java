/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user;


import com.piano.entity.Comment;
import com.piano.entity.Product;
import com.piano.entity.User;
import java.util.List;


/**
 *
 * @author Administrator
 */
public interface ProductDetailService {
    public Product findProductByID(int id);
    public List<Product> ProductRelated(int id);
    public User findUserbyEmail(String email);
    public void addComment(Comment comment);
    public void updateRateAVG(int p_id);
    public List<Product> ProductSale();
}
