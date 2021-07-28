/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin;

import com.piano.entity.Product;

import java.util.List;

/**
 *
 * @author Administrator
 */
public interface DashboardService {
    public double totalSaleInLastMonth();
    public long totalOrderInlastMonth();
    public double totalSaleInThisMonth();
    public long totalOrderInThisMonth();
    public float percentSalesLastMonth();
    public float percentSalesThisMonth();
    public float percentOrdersLastMonth();
    public float percentOrdersThisMonth();
    public List<Product> productBestSeller();
    public int[] countOrderByStatus();
    
}
