/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user;

import com.piano.dto.CommentDTO;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface AjaxService {
    public List<CommentDTO> loadComment(int p_id,int page);
    
}
