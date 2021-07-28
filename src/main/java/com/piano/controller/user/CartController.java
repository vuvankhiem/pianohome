/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.user;


import com.piano.dto.CartDTO;
import com.piano.service.user.CartService;
import java.util.HashMap;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Administrator
 */
@Controller
public class CartController {

    @Autowired
    private CartService cartService;

    private static HashMap<Integer, CartDTO> cart;

    @RequestMapping("/cart")
    public String cart() {
        return "user/cart";
    }

    @RequestMapping("cart/add-to-cart")
    @ResponseBody
    public HashMap<Integer, CartDTO> addCart(HttpSession session,
             @RequestParam(name = "p_id", required = false) int id,
             @RequestParam(name = "quanty", required = false) int quanty
    ) {

        cart = (HashMap<Integer, CartDTO>) session.getAttribute("cart");
        if (cart == null) {
            cart = new HashMap<>();
        }
        cart = cartService.AddCart(id, quanty, cart);
        session.setAttribute("count", cart.size());
        session.setAttribute("listCart", cartService.listCart(cart));
        session.setAttribute("totalPrice", cartService.totalAllPrice(cart));
        session.setAttribute("cart", cart);
        return cart;
    }

    @RequestMapping("cart/delete-cart")
    public void deleteCart(HttpSession session, @RequestParam(name = "p_id", required = false) int id) {
        if (cart == null) {
            cart = new HashMap<>();
        }
        cart = cartService.DeleteCart(id, cart);
        session.setAttribute("count", cart.size());
        session.setAttribute("listCart", cartService.listCart(cart));
        session.setAttribute("totalPrice", cartService.totalAllPrice(cart));
        session.setAttribute("cart", cart);
    }

    @RequestMapping("cart/delete-all-cart")
    public void deleteAllCart(HttpSession session) {
        if (cart == null) {
            cart = new HashMap<>();
        }
        cart = cartService.DeleteAllCart(cart);
        session.setAttribute("count", cart.size());
        session.setAttribute("listCart", cartService.listCart(cart));
        session.setAttribute("totalPrice", cartService.totalAllPrice(cart));
        session.setAttribute("cart", cart);
    }

    @RequestMapping("cart/update-cart")
    public void updateCart(HttpSession session,
             @RequestParam(name = "p_id", required = false) int id,
             @RequestParam(name = "quanty", required = false) int quanty
    ) {
        if (cart == null) {
            cart = new HashMap<>();
        }
        cart = cartService.UpdateCart(id, quanty, cart);
        session.setAttribute("count", cart.size());
        session.setAttribute("listCart", cartService.listCart(cart));
        session.setAttribute("totalPrice", cartService.totalAllPrice(cart));
        session.setAttribute("cart", cart);
    }

}
