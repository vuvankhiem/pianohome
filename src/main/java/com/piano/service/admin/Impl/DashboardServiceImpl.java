/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin.Impl;

import com.piano.dao.ContactDAO;
import com.piano.dao.OrderProductDAO;
import com.piano.dao.ProductDAO;
import com.piano.entity.Product;
import com.piano.service.admin.DashboardService;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class DashboardServiceImpl implements DashboardService{

    @Autowired
    private ProductDAO productDAO;
    @Autowired
    private ContactDAO contactDAO;
    @Autowired
    private OrderProductDAO orderProductDAO;  
    private static final String date[] = date().split("\\$");
    
    @Override
    public double totalSaleInLastMonth() {
        double total = 0;       
        total  = orderProductDAO.totalSalesByOrderDate(date[1]);       
        return total;
    }
    @Override
    public long totalOrderInlastMonth() {
        long total = 0;
        total = orderProductDAO.countProductByOrderDate(date[1]);
        return total;
    }
    @Override
    public double totalSaleInThisMonth() {
        double total = 0;       
        total  = orderProductDAO.totalSalesByOrderDate(date[0]);       
        return total;
    }

    @Override
    public long totalOrderInThisMonth() {
        long total = 0;
        total = orderProductDAO.countProductByOrderDate(date[0]);
        return total;
    }
    

    
    
    @Override
    public float percentSalesLastMonth() {
        double a = totalSaleInLastMonth();
        if(a==0){
            return -100;
        }
        double b = totalSaleIn2MonthAgo();
        double c = (a-b)/a;
        float percent = (float) Math.round(c*1000)/1000;
        return percent*100;
    }

    @Override
    public float percentSalesThisMonth() {
        double a = totalSaleInThisMonth();
        if(a==0){
            return -100;
        }
        double b = totalSaleInLastMonth();
        double c = (a-b)/a;
        float percent = (float) Math.round(c*1000)/1000;
        return percent*100;
    }

    @Override
    public float percentOrdersLastMonth() {
        double a = totalOrderInlastMonth();
        if(a==0){
            return -100;
        }
        double b = totalOrderIn2MonthAgo();
        double c = (a-b)/a;
        float percent = (float) Math.round(c*1000)/1000;
        return percent*100;
    }

    @Override
    public float percentOrdersThisMonth() {
        double a = totalOrderInThisMonth();
        if(a==0){
            return -100;
        }
        double b = totalOrderInlastMonth();
        double c = (a-b)/a;
        float percent = (float) Math.round(c*1000)/1000;
        return percent*100;
    }

    @Override
    public List<Product> productBestSeller() {
        return productDAO.getBestSeller();
    }


    public double totalSaleIn2MonthAgo() {
        double total = 0;       
        total  = orderProductDAO.totalSalesByOrderDate(date[2]);       
        return total;
    }
    public long totalOrderIn2MonthAgo() {
        long total = 0;
        total = orderProductDAO.countProductByOrderDate(date[2]);
        return total;
    }
    
    
    public static String date(){
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        Date d1 = calendar.getTime();
        calendar.add(Calendar.MONTH, -1);
        Date d2 = calendar.getTime();
        calendar.add(Calendar.MONTH, -1);
        Date d3 = calendar.getTime();
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM-yyyy");
        return dateFormat.format(d1)+"$"+dateFormat.format(d2)+"$"+dateFormat.format(d3);
    }
    

    @Override
    public int[] countOrderByStatus() {
        return orderProductDAO.countOrderByStatus();
    }
}
