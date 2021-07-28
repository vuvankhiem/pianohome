/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.admin;

import com.piano.entity.User;
import com.piano.service.admin.ManageUserService;
import java.util.ArrayList;
import java.util.List;
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
public class ManageAccountController {

    @Autowired
    private ManageUserService manageUserService;

    @RequestMapping("admin/manage-account")
    public String manageAccount(Model model,
             @RequestParam(name = "page", defaultValue = "1", required = false) int page,
            @RequestParam(name = "search",required = false) String search
    ) {   
        
        int endPage = 0;
        List<User> listU = new ArrayList<>();
        if(search!=null){
            listU = manageUserService.findUser(search);
        }else{
            endPage = manageUserService.endPage();
            listU = manageUserService.findUserByPage(page);
            model.addAttribute("page", page);
        }
        model.addAttribute("listU", listU);
        model.addAttribute("endPage", endPage);       
        model.addAttribute("active", 4);
        model.addAttribute("count", manageUserService.countUser());
        return "admin/admin-manage-account";
    }
    
    @RequestMapping("admin/active-account")
    public String blockAccount(Model model,
            @RequestParam(name = "uId",required = false) int uId,
            @RequestParam(name = "active",required = false) boolean  active){
        
        User user = manageUserService.findUserbyId(uId);
        user.setActive(active);
        manageUserService.updateUser(user);
        return "redirect:manage-account";
    }
}
