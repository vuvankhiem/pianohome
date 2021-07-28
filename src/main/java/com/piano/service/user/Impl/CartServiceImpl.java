/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user.Impl;


import com.piano.dao.CartDAO;
import com.piano.dto.CartDTO;
import com.piano.service.user.CartService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class CartServiceImpl implements CartService{

    @Autowired
    private CartDAO cartDAO;
    
    @Override
    public HashMap<Integer, CartDTO> AddCart(int id,int quanty, HashMap<Integer, CartDTO> cart) {
        return cartDAO.addToCart(id,quanty, cart);
    }

    @Override
    public HashMap<Integer, CartDTO> UpdateCart(int id, int quanty, HashMap<Integer, CartDTO> cart) {
        return cartDAO.updateCart(id, quanty, cart);
    }

    @Override
    public HashMap<Integer, CartDTO> DeleteCart(int id, HashMap<Integer, CartDTO> cart) {
        return cartDAO.deleteCart(id, cart);
    }

    @Override
    public HashMap<Integer, CartDTO> DeleteAllCart(HashMap<Integer, CartDTO> cart) {
        return cartDAO.deleteAllCart(cart);
    }

    @Override
    public int totalQuanty(HashMap<Integer, CartDTO> cart) {
        return cartDAO.totalQuanty(cart);
    }

    @Override
    public double totalAllPrice(HashMap<Integer, CartDTO> cart) {
        return cartDAO.totalAllPrice(cart);
    }

    @Override
    public List<CartDTO> listCart(HashMap<Integer, CartDTO> cart) {
        List<CartDTO> listcart = new ArrayList<>();
        for (Map.Entry<Integer, CartDTO> itemCart : cart.entrySet()) {
           CartDTO cartDTO = itemCart.getValue();
           if(cartDTO.getProductDTO().getSale()!=0){
               double priceSale = cartDTO.getProductDTO().getPrice()*(1- cartDTO.getProductDTO().getSale()/100);
               cartDTO.getProductDTO().setPrice(priceSale);
           }
            listcart.add(cartDTO);
        }
        return listcart;
    }
    
}
