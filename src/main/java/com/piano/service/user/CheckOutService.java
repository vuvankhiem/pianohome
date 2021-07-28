/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user;


import com.piano.dto.CartDTO;
import com.piano.entity.Orderdetail;
import com.piano.entity.Orderproduct;
import com.piano.entity.Product;
import java.util.HashMap;

/**
 *
 * @author Administrator
 */
public interface CheckOutService {
    public void AddOrder(Orderproduct orderproduct);
    public void AddOrderDetail(Orderdetail orderdetail);
    public Product getProduct(int id);
    public int quanty(HashMap<Integer,CartDTO> cart);
    public double totalPrice(HashMap<Integer,CartDTO> cart);
    public int totalQuanty(HashMap<Integer,CartDTO> cart);
}
