/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao.Impl;


import com.piano.dao.ProductDAO;
import com.piano.dao.WishListDAO;
import com.piano.dto.ProductDTO;
import com.piano.entity.Product;
import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


/**
 *
 * @author Administrator
 */
@Repository
public class WishListDAOImpl implements WishListDAO{

    @Autowired
    ProductDAO productDAO;
    
    @Override
    public HashMap<Integer,ProductDTO> addWish(int p_id, HashMap<Integer, ProductDTO> wishlist) {
        
        Product p = productDAO.findProductByID(p_id);
        ProductDTO pdto = new ProductDTO();
        pdto.setProductID(p.getProductID());
        pdto.setProductName(p.getProductName());
        pdto.setImage1(p.getImage1());
        pdto.setPrice((double)p.getPrice()*(1-(float)p.getSale()/100));
        pdto.setCategoryName(p.getCategory().getCategoryName());
        pdto.setCategoryID(p.getCategory().getCategoryID());
        
        wishlist.put(p_id, pdto);
        return wishlist;
        
    }

    @Override
    public HashMap<Integer,ProductDTO> deleteWish(int p_id, HashMap<Integer, ProductDTO> wishlist) {
        if(wishlist.containsKey(p_id)){
            wishlist.remove(p_id);
        }
        return wishlist;
    }

    @Override
    public HashMap<Integer,ProductDTO> deleteWishList(HashMap<Integer, ProductDTO> wishlist) {
        if(wishlist==null){
            return wishlist;
        }
        wishlist.clear();
        return wishlist;
    }
    
}
