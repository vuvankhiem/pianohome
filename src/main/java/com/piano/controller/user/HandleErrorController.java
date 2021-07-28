/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.user;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Administrator
 */
@Controller
public class HandleErrorController{
    //403 page
    @RequestMapping("/403")
    public String _403_page(Model model) {
        model.addAttribute("err1", "403 Forbidden Error");
        model.addAttribute("err2", "You don't have permission to access / on this server");
        return "user/error-page";
    }

    @RequestMapping("/404")
    public String _404_page(Model model){
        model.addAttribute("err1", "404 Not Found");
        model.addAttribute("err2", "The origin server did not find a current representation for the target resource or is not willing to disclose that one exists.");
        return "user/error-page";
    }

    
    
    
}
