/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin;

import com.piano.entity.Comment;
import com.piano.entity.Product;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface ManageReviewsService {
    public Product findProductById(int id);
    public List<Comment> findReviewsByProductId(int p_id);
    public void deleteComment(int id);
}
