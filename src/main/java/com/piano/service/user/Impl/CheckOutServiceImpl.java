/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user.Impl;


import com.piano.dao.CartDAO;
import com.piano.dao.OrderDetailDAO;
import com.piano.dao.OrderProductDAO;
import com.piano.dao.ProductDAO;
import com.piano.dto.CartDTO;
import com.piano.entity.Orderdetail;
import com.piano.entity.Orderproduct;
import com.piano.entity.Product;
import com.piano.service.user.CheckOutService;
import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class CheckOutServiceImpl implements CheckOutService{
    @Autowired
    private OrderProductDAO orderProductDAO;
    @Autowired
    private OrderDetailDAO orderDetailDAO;
    @Autowired
    private ProductDAO productDAO;
    @Autowired
    private CartDAO cartDAO;
    @Override
    public void AddOrder(Orderproduct orderproduct) {
        orderProductDAO.addOrder(orderproduct);
    }

    @Override
    public void AddOrderDetail(Orderdetail orderdetail) {
        orderDetailDAO.addOrderDetail(orderdetail);
    }

    @Override
    public Product getProduct(int i) {
        return productDAO.findProductByID(i);
    }

    @Override
    public int quanty(HashMap<Integer, CartDTO> cart) {
        return cartDAO.totalQuanty(cart);
    }
    @Override
    public double totalPrice(HashMap<Integer,CartDTO> cart){
        return cartDAO.totalAllPrice(cart);
    }

    @Override
    public int totalQuanty(HashMap<Integer, CartDTO> cart) {
        return cartDAO.totalQuanty(cart);
    }
    
    
}
