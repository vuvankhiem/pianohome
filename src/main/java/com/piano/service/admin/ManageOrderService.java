/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin;

import com.piano.entity.Orderdetail;
import com.piano.entity.Orderproduct;
import com.piano.entity.Product;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface ManageOrderService {
    public long countOrder();
    public List<Orderproduct> findOrderByPage(int page);
    public int endPage(long count);
    public List<Orderdetail> findOrderDetailByOrderID(int orderID);
    public Orderproduct findOrderByOrderDetailID(int id);
    public Orderproduct findOrderByID(int id);
    public void updateOrder(Orderproduct orderproduct);
    public long getQuantySold(int id);
    public void updateProduct(Product product);
    public Product findProductByID(int id);
    public void deleteOrder(int id);
    public List<Orderproduct> findOrderByStatus(int status);
}
