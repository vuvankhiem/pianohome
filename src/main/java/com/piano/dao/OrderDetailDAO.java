/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao;

import com.piano.entity.Orderdetail;
import com.piano.entity.Orderproduct;
import java.util.List;



/**
 *
 * @author Administrator
 */
public interface OrderDetailDAO {
    public void addOrderDetail(Orderdetail orderdetail);
    public List<Orderdetail> findOrderDetailByOrderID(int id);
    public Orderproduct getOrderByOrderDetailID(int id);
}
