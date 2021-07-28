/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user.Impl;


import com.piano.dao.CommentDAO;
import com.piano.dto.CommentDTO;
import com.piano.entity.Comment;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.piano.service.user.AjaxService;

/**
 *
 * @author Administrator
 */
@Service
public class AjaxServiceImpl implements AjaxService {

    @Autowired
    private CommentDAO commentDAO;
    static int index = 0;

    @Override
    public List<CommentDTO> loadComment(int p_id, int page) {
        index = index + page;
        long count = commentDAO.getCommentCount(p_id);
        if (index <= 0) {
            index = 0;
        } else {
            if(index>=count){
                index = index-3;
            }
        }

        List<Comment> listCMT = commentDAO.getCommentByProductID(p_id, index);
        List<CommentDTO> list_commentDTO = new ArrayList<>();

        for (Comment comment : listCMT) {
            CommentDTO commentDTO = new CommentDTO();
            commentDTO.setTitle(comment.getTitle());
            commentDTO.setReview(comment.getReview());
            commentDTO.setRate(comment.getRate());
            commentDTO.setDateUP(comment.getDateUP());
            commentDTO.setName(comment.getUser().getFirstName() + " " + comment.getUser().getLastName());
            list_commentDTO.add(commentDTO);
        }
        return list_commentDTO;
    }

}
