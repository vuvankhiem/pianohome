/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.user;


import com.piano.entity.Comment;
import com.piano.service.user.ProductDetailService;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
public class ProductDetailController {
    
    @Autowired
    private ProductDetailService productDetailService;
    @RequestMapping("/product-detail")
    public String productDetail(Model model,@RequestParam("id") int id){
        model.addAttribute("p_detail",productDetailService.findProductByID(id));
        model.addAttribute("listPRelated", productDetailService.ProductRelated(id));
        model.addAttribute("listSale", productDetailService.ProductSale());
        return "user/product-detail";
    }
    
    @RequestMapping(value = "/product-review")
    public String review(
            HttpServletRequest request,
            @RequestParam(name = "rate",required = false,defaultValue = "0") int rate,
            @RequestParam(name = "email",required = false) String email,
            @RequestParam(name = "p_id",required = false,defaultValue = "0") int p_id
            ) throws UnsupportedEncodingException{
        if(rate==0||email==null||p_id==0){
            return "redirect:/home";
        }
        request.setCharacterEncoding("UTF-8");
        
        String title = request.getParameter("title");
        String review = request.getParameter("review");
        
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm");
        Date date = new Date();
        String dateReview = formatter.format(date);
        
        Comment comment = new Comment();
        comment.setRate(rate);
        comment.setTitle(title);
        comment.setReview(review);
        comment.setProduct(productDetailService.findProductByID(p_id));
        comment.setUser(productDetailService.findUserbyEmail(email));
        comment.setDateUP(dateReview);
        productDetailService.addComment(comment);
        productDetailService.updateRateAVG(p_id);
        return "redirect:"+request.getHeader("Referer");
    }
}
