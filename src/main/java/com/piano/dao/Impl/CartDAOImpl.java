/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao.Impl;

import com.piano.dao.CartDAO;
import com.piano.dao.ProductDAO;
import com.piano.dto.CartDTO;
import com.piano.dto.ProductDTO;
import com.piano.entity.Product;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public class CartDAOImpl implements CartDAO {

    @Autowired
    private ProductDAO productDAO;

    @Override
    public HashMap<Integer, CartDTO> addToCart(int id, int quanty, HashMap<Integer, CartDTO> cart) {
        CartDTO cartDTO = new CartDTO();
        Product product = productDAO.findProductByID(id);
        ProductDTO productDTO = new ProductDTO();
        productDTO.setProductID(product.getProductID());
        productDTO.setProductName(product.getProductName());
        productDTO.setSale(product.getSale());
        productDTO.setPrice(product.getPrice());
        productDTO.setImage1(product.getImage1());
        productDTO.setCategoryName(product.getCategory().getCategoryName());
        if (cart.containsKey(id)) {
            cartDTO = cart.get(id);
            cartDTO.setQuanty(cartDTO.getQuanty() + quanty);
            cartDTO.setTotalPrice(cartDTO.getQuanty() * cartDTO.getTotalPrice());
        } else {
            cartDTO.setProductDTO(productDTO);
            cartDTO.setQuanty(quanty);

            if (productDTO.getSale() != 0) {
                float persent = (float) productDTO.getSale() / 100;
                double priceSale = productDTO.getPrice() * (1 - persent);
                cartDTO.setTotalPrice(priceSale * quanty);
            } else {
                cartDTO.setTotalPrice(productDTO.getPrice() * quanty);
            }
        }
        cart.put(id, cartDTO);
        return cart;
    }

    @Override
    public HashMap<Integer, CartDTO> updateCart(int id, int quanty, HashMap<Integer, CartDTO> cart) {
        if (cart == null) {
            return cart;
        }
        CartDTO cartDTO = new CartDTO();
        if (cart.containsKey(id)) {
            cartDTO = cart.get(id);
            cartDTO.setQuanty(quanty);
            if (cartDTO.getProductDTO().getSale() != 0) {
                float persent = (float) cartDTO.getProductDTO().getSale() / 100;
                double priceSale = cartDTO.getProductDTO().getPrice() * (1 - persent);
                cartDTO.setTotalPrice(quanty * priceSale);
            } else {
                cartDTO.setTotalPrice(quanty * cartDTO.getProductDTO().getPrice());
            }
        }
        cart.put(id, cartDTO);
        return cart;
    }

    @Override
    public HashMap<Integer, CartDTO> deleteCart(int id, HashMap<Integer, CartDTO> cart) {
        if (cart.containsKey(id)) {
            cart.remove(id);
        }
        return cart;
    }

    @Override
    public HashMap<Integer, CartDTO> deleteAllCart(HashMap<Integer, CartDTO> cart) {
        if (cart == null) {
            return cart;
        }
        cart.clear();
        return cart;
    }

    @Override
    public int totalQuanty(HashMap<Integer, CartDTO> cart) {
        int totalQuanty = 0;
        if (cart == null) {
            return totalQuanty;
        } else {
            for (Map.Entry<Integer, CartDTO> itemCart : cart.entrySet()) {
                totalQuanty += itemCart.getValue().getQuanty();
            }
        }
        return totalQuanty;
    }

    @Override
    public double totalAllPrice(HashMap<Integer, CartDTO> cart) {
        double totalPrice = 0;
        for (Map.Entry<Integer, CartDTO> itemCart : cart.entrySet()) {
            totalPrice += itemCart.getValue().getTotalPrice();

        }
        return totalPrice;
    }

}
