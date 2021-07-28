/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin.Impl;

import com.piano.dao.OrderDetailDAO;
import com.piano.dao.OrderProductDAO;
import com.piano.dao.ProductDAO;
import com.piano.entity.Orderdetail;
import com.piano.entity.Orderproduct;
import com.piano.entity.Product;
import com.piano.service.admin.ManageOrderService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class ManageOrderServiceImpl implements ManageOrderService{

    @Autowired
    OrderProductDAO orderProductDAO;
    @Autowired
    OrderDetailDAO orderDetailDAO;
    @Autowired
    ProductDAO productDAO;
    @Override
    public long countOrder() {
        return orderProductDAO.countOrder();
    }

    @Override
    public List<Orderproduct> findOrderByPage(int page) {
        return orderProductDAO.findOrderByPage((page-1)*10);
    }

    @Override
    public int endPage(long count) {
        int endpage = 0;
        endpage = (int) (count/10);
        if(count%10!=0){
            endpage++;
        }
        return endpage;
    }

    @Override
    public List<Orderdetail> findOrderDetailByOrderID(int orderID) {
        return orderDetailDAO.findOrderDetailByOrderID(orderID);
    }

    @Override
    public Orderproduct findOrderByOrderDetailID(int i) {
        return orderDetailDAO.getOrderByOrderDetailID(i);
    }

    @Override
    public Orderproduct findOrderByID(int i) {
        return orderProductDAO.findOrderByID(i);
    }

    @Override
    public void updateOrder(Orderproduct o) {
        orderProductDAO.updateOrder(o);
    }

    @Override
    public long getQuantySold(int id) {
        return productDAO.getQuantySold(id);
    }

    @Override
    public void updateProduct(Product product) {
        productDAO.updateProduct(product);
    }
    

    @Override
    public Product findProductByID(int i) {
        return productDAO.findProductByID(i);
    }

    @Override
    public void deleteOrder(int id) {
        orderProductDAO.deleteOrder(id);
    }

    @Override
    public List<Orderproduct> findOrderByStatus(int status) {
        return orderProductDAO.findOrderByStatus(status);
    }
    
}
