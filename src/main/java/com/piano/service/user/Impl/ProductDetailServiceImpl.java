/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user.Impl;


import com.piano.dao.CommentDAO;
import com.piano.dao.ProductDAO;
import com.piano.dao.UserDAO;
import com.piano.entity.Comment;
import com.piano.entity.Product;
import com.piano.entity.User;
import com.piano.service.user.ProductDetailService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class ProductDetailServiceImpl implements ProductDetailService {

    @Autowired
    private ProductDAO productDAO;
    @Autowired
    private UserDAO userDAO;
    @Autowired
    private CommentDAO commentDAO;

    @Override
    public Product findProductByID(int id) {
        return productDAO.findProductByID(id);
    }

    @Override
    public List<Product> ProductRelated(int id) {
        return productDAO.findProductsRelated(id);
    }

    @Override
    public User findUserbyEmail(String email) {
        return userDAO.getUserByEmail(email);
    }

    @Override
    public void addComment(Comment comment) {

        commentDAO.addComment(comment);
    }

    @Override
    public void updateRateAVG(int p_id) {

        double rateAVG = commentDAO.getRateAVG(p_id);
        productDAO.updateRateAVG((float) rateAVG, p_id);

    }

    @Override
    public List<Product> ProductSale() {
        return productDAO.findProductsHotSale();
    }

    
}
