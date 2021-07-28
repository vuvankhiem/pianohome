/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user;


import com.piano.dto.ProductDTO;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface WishListService {
    public HashMap<Integer,ProductDTO> AddWish(int p_id,HashMap<Integer,ProductDTO> wishlist);
    public HashMap<Integer,ProductDTO> DeleteWish(int p_id,HashMap<Integer,ProductDTO> wishlist);
    public HashMap<Integer,ProductDTO> DeleteWishList(HashMap<Integer,ProductDTO> wishlist);
    public List<ProductDTO> WishList(HashMap<Integer,ProductDTO> wishlist);
}
