/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.user;

/**
 *
 * @author Administrator
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import com.piano.dao.CommentDAO;
import com.piano.dao.ProductDAO;
import com.piano.dto.CartDTO;
import com.piano.dto.CommentDTO;
import com.piano.dto.ProductDTO;
import com.piano.entity.Product;
import com.piano.service.user.CartService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.piano.service.user.AjaxService;

/**
 *
 * @author Administrator
 */
@Controller
public class AjaxController {
    @Autowired
    private ProductDAO productDAO;
    @Autowired
    private CommentDAO commentDAO;
    @Autowired
    private CartService cartService;
    @Autowired
    private AjaxService ajaxService;

    @RequestMapping(value = "api/quick-view")
    @ResponseBody
    public ProductDTO product(@RequestParam(name = "p_id", required = false) int productID) {
        Product p = productDAO.findProductByID(productID);
        ProductDTO productDTO = new ProductDTO();
        productDTO.setProductID(p.getProductID());
        productDTO.setProductName(p.getProductName());
        productDTO.setDescription(p.getDescription());
        productDTO.setImage1(p.getImage1());
        productDTO.setImage2(p.getImage2());
        productDTO.setImage3(p.getImage3());
        productDTO.setPrice(p.getPrice());
        productDTO.setStatus(p.getStatus());
        productDTO.setSale(p.getSale());
        return productDTO;
    }

    @RequestMapping(value = "api/update-countdown-time")
    public void updateSaleTime(@RequestParam(name = "p_id", required = false) int productID,HttpSession session) {
        productDAO.updateTimeSale(productID);
        Product p = productDAO.findProductByID(productID);
        CartDTO cartDTO = new CartDTO();
        HashMap<Integer,CartDTO> cart = (HashMap<Integer,CartDTO>) session.getAttribute("cart");
        for (Map.Entry<Integer, CartDTO> entry : cart.entrySet()) {
            cartDTO = entry.getValue();
            if(cartDTO.getProductDTO().getProductID()==productID){
                cartDTO.setTotalPrice(p.getPrice()*cartDTO.getQuanty());
                break;
            }
            
        }
        cart.put(productID, cartDTO);
        session.setAttribute("listCart", cartService.listCart(cart) );
        session.setAttribute("count", cart.size());
        session.setAttribute("listCart", cartService.listCart(cart));
        session.setAttribute("totalPrice", cartService.totalAllPrice(cart));
        session.setAttribute("cart", cart);
    }

    @RequestMapping(value = "api/load-comment")
    @ResponseBody
    public List<CommentDTO> loadComment(@RequestParam(name = "p_id", required = false) int p_id, @RequestParam(name = "page", defaultValue = "0") int page) {
        return ajaxService.loadComment(p_id, page);

    }
}
