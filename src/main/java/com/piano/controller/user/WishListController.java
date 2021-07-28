/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.user;


import com.piano.dto.ProductDTO;
import com.piano.service.user.WishListService;
import java.util.HashMap;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Administrator
 */
@Controller
public class WishListController {

    @Autowired
    private WishListService wishListService;

    @RequestMapping("/wish-list")
    public String wishlist() {
        return "user/wishlist";
    }

    @RequestMapping("wish-list/add")
    public void addWish(HttpSession session, @RequestParam(name = "p_id", required = false) int p_id) {
        HashMap<Integer, ProductDTO> wishlist = (HashMap<Integer, ProductDTO>) session.getAttribute("wish");
        if (wishlist == null) {
            wishlist = new HashMap<>();
        }
        wishlist = wishListService.AddWish(p_id, wishlist);
        session.setAttribute("wish", wishlist);
        session.setAttribute("wishSize", wishlist.size());
        session.setAttribute("listW", wishListService.WishList(wishlist));

    }

    @RequestMapping("wish-list/delete")
    public void deleteWish(HttpSession session, @RequestParam(name = "p_id", required = false) int p_id) {
        HashMap<Integer, ProductDTO> wishlist = (HashMap<Integer, ProductDTO>) session.getAttribute("wish");
        if (wishlist == null) {
            wishlist = new HashMap<>();
        }
        wishlist = wishListService.DeleteWish(p_id, wishlist);
        session.setAttribute("wish", wishlist);
        session.setAttribute("wishSize", wishlist.size());
        session.setAttribute("listW", wishListService.WishList(wishlist));

    }

    @RequestMapping("wish-list/delete-all")
    public void deleteAllWish(HttpSession session) {
        HashMap<Integer, ProductDTO> wishlist = (HashMap<Integer, ProductDTO>) session.getAttribute("wish");
        if (wishlist == null) {
            wishlist = new HashMap<>();
        }
        wishlist = wishListService.DeleteWishList(wishlist);
        session.setAttribute("wish", wishlist);
        session.setAttribute("wishSize", wishlist.size());
        session.setAttribute("listW", wishListService.WishList(wishlist));
    }

}
