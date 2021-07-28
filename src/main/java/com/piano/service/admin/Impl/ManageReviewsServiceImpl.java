/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin.Impl;

import com.piano.dao.CommentDAO;
import com.piano.dao.ProductDAO;
import com.piano.entity.Comment;
import com.piano.entity.Product;
import com.piano.service.admin.ManageReviewsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class ManageReviewsServiceImpl implements ManageReviewsService{
    @Autowired
    private CommentDAO commentDAO;
    @Autowired
    private ProductDAO productDAO;

    @Override
    public Product findProductById(int id) {
        return productDAO.findProductByID(id);
    }

    @Override
    public List<Comment> findReviewsByProductId(int p_id) {
        return commentDAO.findCommentByProductID(p_id);
    }

    @Override
    public void deleteComment(int id) {
        commentDAO.deleteComment(id);
    }
    
}
