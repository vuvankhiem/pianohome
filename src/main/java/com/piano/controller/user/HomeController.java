/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.user;


import com.piano.service.user.HomeService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Administrator
 */
@Controller
public class HomeController {
    @Autowired
    private HomeService homeService;
    @RequestMapping(value = {"/","home"})
    public String home(Model model,HttpSession session){
        model.addAttribute("listP", homeService.AllProducts());
        session.setAttribute("listC", homeService.ALLCategories());
        model.addAttribute("listNewProduct", homeService.NewProduct());
        model.addAttribute("listTopSeller", homeService.TopSeller());
        model.addAttribute("listSale", homeService.HotSale());
        model.addAttribute("listN", homeService.RecentNews());
        return "user/index";
    }
}
