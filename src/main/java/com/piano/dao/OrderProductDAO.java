/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao;

import com.piano.entity.Orderproduct;
import java.util.List;



/**
 *
 * @author Administrator
 */
public interface OrderProductDAO {
    public void addOrder(Orderproduct orderproduct);
    public List<Orderproduct> findOrderByPage(int page);
    public Orderproduct findOrderByID(int id);
    public long countOrder();
    public void updateOrder(Orderproduct orderproduct);
    public void deleteOrder(int id);
    public List<Orderproduct> findOrderByStatus(int status);
    public long countProductByOrderDate(String date);
    public double totalSalesByOrderDate(String date);
    
    public int[] countOrderByStatus();
}
