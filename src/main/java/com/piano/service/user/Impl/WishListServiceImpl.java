/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user.Impl;


import com.piano.dao.WishListDAO;
import com.piano.dto.ProductDTO;
import com.piano.service.user.WishListService;
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
public class WishListServiceImpl implements WishListService{
    
    @Autowired
    private WishListDAO wishListDAO;

    @Override
    public HashMap<Integer, ProductDTO> AddWish(int p_id, HashMap<Integer, ProductDTO> wishlist) {
        if(!wishlist.containsKey(p_id)){
            return wishListDAO.addWish(p_id, wishlist);
        }
        return wishlist;
    }

    @Override
    public HashMap<Integer, ProductDTO> DeleteWish(int p_id, HashMap<Integer, ProductDTO> wishlist) {
        return wishListDAO.deleteWish(p_id, wishlist);
    }

    @Override
    public HashMap<Integer, ProductDTO> DeleteWishList(HashMap<Integer, ProductDTO> wishlist) {
        return wishListDAO.deleteWishList(wishlist);
    }

    @Override
    public List<ProductDTO> WishList(HashMap<Integer, ProductDTO> wishlist) {
        List<ProductDTO> list = new ArrayList<>();
        for (Map.Entry<Integer, ProductDTO> entry : wishlist.entrySet()) {
            ProductDTO productDTO = entry.getValue();
            list.add(productDTO);
        }
        return list;
    }
    
}
