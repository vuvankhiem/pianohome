/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.user;

import com.piano.dto.CartDTO;
import com.piano.entity.Orderdetail;
import com.piano.entity.Orderproduct;
import com.piano.entity.Product;
import com.piano.service.user.CheckOutService;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Administrator
 */
@Controller
public class CheckOutController {

    @Autowired
    private CheckOutService checkOutService;
    @Autowired
    private JavaMailSender javaMailSender;

    @RequestMapping("/check-out")
    public String checkout(@RequestParam(name = "email", required = false) String email,
            @RequestParam(name = "phone", required = false) String phone,
            HttpSession session,
            HttpServletRequest request, Model model
    ) throws UnsupportedEncodingException {

        request.setCharacterEncoding("UTF-8");
        String lastName = request.getParameter("lastName");
        String firstName = request.getParameter("firstName");
        String address = request.getParameter("address");
        String orderNotes = request.getParameter("orderNote");
        HashMap<Integer, CartDTO> cart = (HashMap<Integer, CartDTO>) session.getAttribute("cart");
        int check = checkOutService.quanty(cart);
        if (check != 0) {
            if (email != null) {

                double totalPrice = (double) checkOutService.totalPrice(cart);
                int totalQuanty = (int) checkOutService.totalQuanty(cart);
                SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm");
                Date date = new Date();
                String orderDate = formatter.format(date);

                Orderproduct orderproduct = new Orderproduct();
                orderproduct.setName(firstName + " " + lastName);
                orderproduct.setAddress(address);
                orderproduct.setNumberPhone(phone);
                orderproduct.setEmail(email);
                orderproduct.setNoteOrder(orderNotes);
                orderproduct.setTotalPrice(totalPrice);
                orderproduct.setTotalQuanty(totalQuanty);
                orderproduct.setOrderDate(orderDate);
                orderproduct.setStatusOrder(1);
                checkOutService.AddOrder(orderproduct);

                for (Map.Entry<Integer, CartDTO> entry : cart.entrySet()) {
                    CartDTO cartDTO = entry.getValue();
                    Orderdetail orderdetail = new Orderdetail();
                    orderdetail.setOrder(orderproduct);
                    orderdetail.setPrice((double) cartDTO.getProductDTO().getPrice() * (1 - (float) cartDTO.getProductDTO().getSale() / 100));
                    orderdetail.setQuanty(cartDTO.getQuanty());
                    orderdetail.setTotalPrice(cartDTO.getTotalPrice());
                    Product p = checkOutService.getProduct(cartDTO.getProductDTO().getProductID());
                    orderdetail.setProduct(p);
                    checkOutService.AddOrderDetail(orderdetail);
                }

                String mes = "Chung toi se som lien lac lai voi ban."
                        + "Don hang cua ban se duoc cap nhat lien tuc tai dia chi email : " + email;
                SimpleMailMessage message = new SimpleMailMessage();
                message.setTo(email);
                message.setSubject("Cam on ban da mua hang tai Piano Home");
                message.setText(mes);
                this.javaMailSender.send(message);
                return "redirect:/home";
            }
        } else {
            model.addAttribute("err", "Không thể đặt hàng vì giỏ hàng của bạn đang trống !");
        }
        return "user/checkout";
    }

}
