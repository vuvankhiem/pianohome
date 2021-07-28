/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.admin;

import com.piano.service.admin.ManageReviewsService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Administrator
 */
@Controller
public class ManageReviewsController {
    @Autowired
    private ManageReviewsService manageReviewsService;
    @RequestMapping("admin/manage-review")
    public String manageReview(@RequestParam(name = "p_id",required = false) int p_id,Model model){
        model.addAttribute("p", manageReviewsService.findProductById(p_id));
        model.addAttribute("listR", manageReviewsService.findReviewsByProductId(p_id));
        return "admin/admin-review-product";
    }
    
    @RequestMapping("admin/delete-review")
    public String deleteReview(@RequestParam(name = "id",required = false) int id,HttpServletRequest request){
        manageReviewsService.deleteComment(id);
        return "redirect:" + request.getHeader("Referer");
    }
    
}
