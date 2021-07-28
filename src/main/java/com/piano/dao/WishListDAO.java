/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao;


import com.piano.dto.ProductDTO;
import java.util.HashMap;

/**
 *
 * @author Administrator
 */
public interface WishListDAO {
    public HashMap<Integer,ProductDTO> addWish(int p_id,HashMap<Integer,ProductDTO> wishlist);
    public HashMap<Integer,ProductDTO> deleteWish(int p_id,HashMap<Integer,ProductDTO> wishlist);
    public HashMap<Integer,ProductDTO> deleteWishList(HashMap<Integer,ProductDTO> wishlist);
}
