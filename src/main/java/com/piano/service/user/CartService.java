/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user;


import com.piano.dto.CartDTO;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface CartService {
    public HashMap<Integer,CartDTO> AddCart(int id,int quanty,HashMap<Integer,CartDTO> cart);
    public HashMap<Integer,CartDTO> UpdateCart(int id,int quanty,HashMap<Integer,CartDTO> cart);
    public HashMap<Integer,CartDTO> DeleteCart(int id,HashMap<Integer,CartDTO> cart);
    public HashMap<Integer,CartDTO> DeleteAllCart(HashMap<Integer,CartDTO> cart);
    public int totalQuanty(HashMap<Integer,CartDTO> cart);
    public double totalAllPrice(HashMap<Integer,CartDTO> cart);
    public List<CartDTO> listCart(HashMap<Integer,CartDTO> cart);
}
