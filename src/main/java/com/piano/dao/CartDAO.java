/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao;


import com.piano.dto.CartDTO;
import java.util.HashMap;

/**
 *
 * @author Administrator
 */
public interface CartDAO {
    public HashMap<Integer,CartDTO> addToCart(int id,int quanty,HashMap<Integer,CartDTO> cart);
    public HashMap<Integer,CartDTO> updateCart(int id,int quanty,HashMap<Integer,CartDTO> cart);
    public HashMap<Integer,CartDTO> deleteCart(int id,HashMap<Integer,CartDTO> cart);
    public HashMap<Integer,CartDTO> deleteAllCart(HashMap<Integer,CartDTO> cart);
    public int totalQuanty(HashMap<Integer,CartDTO> cart);
    public double totalAllPrice(HashMap<Integer,CartDTO> cart);
}
