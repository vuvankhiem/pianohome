/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao;

import com.piano.entity.Comment;
import java.util.List;
/**
 *
 * @author Administrator
 */
public interface CommentDAO {
    public void addComment(Comment comment);
    public List<Comment> getCommentByProductID(int id,int page);
    public long getCommentCount(int p_id);
    public double getRateAVG(int p_id);
    public List<Comment> findCommentByProductID(int id);
    public void deleteComment(int id);
}
