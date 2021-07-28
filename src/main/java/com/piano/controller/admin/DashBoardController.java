/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.admin;

import com.piano.service.admin.DashboardService;
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
public class DashBoardController {

    @Autowired
    private DashboardService dashboardService;

    @RequestMapping("/admin")
    public String admin(Model model, HttpSession session) {

        model.addAttribute("active", 1);
        model.addAttribute("listP", dashboardService.productBestSeller());

        model.addAttribute("pOrderLastMonth", dashboardService.percentOrdersLastMonth());
        model.addAttribute("pSaleLastMonth", dashboardService.percentSalesLastMonth());

        model.addAttribute("pOrderThisMonth", dashboardService.percentOrdersThisMonth());
        model.addAttribute("pSaleThisMonth", dashboardService.percentSalesThisMonth());

        model.addAttribute("orderLastMonth", dashboardService.totalOrderInlastMonth());
        model.addAttribute("saleLastMonth", dashboardService.totalSaleInLastMonth());

        model.addAttribute("orderThisMonth", dashboardService.totalOrderInThisMonth());
        model.addAttribute("saleThisMonth", dashboardService.totalSaleInThisMonth());
        
        model.addAttribute("order", dashboardService.countOrderByStatus());
        return "admin/admin-dashboard";
    }
}
