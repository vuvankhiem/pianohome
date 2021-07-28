/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.admin;

import com.piano.entity.Orderdetail;
import com.piano.entity.Orderproduct;
import com.piano.entity.Product;
import com.piano.service.admin.ManageOrderService;
import java.util.List;
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
public class ManageOrderController {

    @Autowired
    private ManageOrderService manageOrderService;

    @Autowired
    private JavaMailSender javaMailSender;

    @RequestMapping("admin/manage-order")
    public String manageOrder(Model model, @RequestParam(name = "page", required = false, defaultValue = "1") int page) {

        model.addAttribute("listO", manageOrderService.findOrderByPage(page));
        model.addAttribute("endPage", manageOrderService.endPage(manageOrderService.countOrder()));
        model.addAttribute("active", 3);
        return "admin/admin-order-product";
    }

    
    
    
    @RequestMapping("admin/order-detail")
    public String orderDetail(Model model, @RequestParam(name = "id", required = false) int id,
            @RequestParam(name = "invoice",required = false,defaultValue = "0") int invoice) {
        model.addAttribute("order", manageOrderService.findOrderByOrderDetailID(id));
        model.addAttribute("orderDetail", manageOrderService.findOrderDetailByOrderID(id));
        if(invoice!=0){
            return "admin/admin-invoice";
        }
        return "admin/admin-order-detail";
    }

    
    
    
    @RequestMapping("admin/update-status-order")
    public String updateStatusOrder(Model model,
            @RequestParam(name = "status", required = false, defaultValue = "0") int status,
            @RequestParam(name = "oId", required = false, defaultValue = "0") int oId
    ) {
        Orderproduct o = manageOrderService.findOrderByID(oId);
        if (o.getStatusOrder() != status && status != 1) {
            String mes = "";
            List<Orderdetail> listODetail = manageOrderService.findOrderDetailByOrderID(oId);
            if (status == 3) {
                o.setStatusOrder(status);
                manageOrderService.updateOrder(o);
                for (Orderdetail orderdetail : listODetail) {
                    Product p = manageOrderService.findProductByID(orderdetail.getProduct().getProductID());
                    int quanty = p.getQuantitySold() + orderdetail.getQuanty();
                    p.setQuantitySold(quanty);
                    manageOrderService.updateProduct(p);

                }
                mes = "Đơn hàng của bạn đã giao thành công. Cảm ơn bạn đã ủng hộ PianoHome. Hi vọng mọi dịch vụ bên shop chúng tôi làm bạn hài lòng <3";
            } else if (status == 4) {
                o.setStatusOrder(status);
                manageOrderService.updateOrder(o);
                for (Orderdetail orderdetail : listODetail) {
                    Product p = manageOrderService.findProductByID(orderdetail.getProduct().getProductID());
                    int quanty = p.getQuantitySold() - orderdetail.getQuanty();
                    p.setQuantitySold(quanty);
                    manageOrderService.updateProduct(p);

                }
                mes = "Đơn hàng của bạn đã được hoàn trả";
            } else {
                o.setStatusOrder(status);
                manageOrderService.updateOrder(o);
                switch (status) {
                    case 2:
                        mes = "Đơn hàng của bạn đang được giao đi";
                        break;
                    case 5:
                        mes = "Đơn hàng của bạn đã bị hủy";
                        break;
                }
            }
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(o.getEmail());
            message.setSubject("Cập nhật đơn hàng của bạn tại PianoHome");
            message.setText(mes);
            this.javaMailSender.send(message);
        }

        return "redirect:manage-order";
    }
    
    
    
    @RequestMapping("admin/delete-order")
    public String deleteOrder(@RequestParam(name = "id",required = false) int id){
        manageOrderService.deleteOrder(id);
        return "redirect:manage-order";
    }
    
    @RequestMapping("admin/find-order")
    public String findOrder(Model model, 
            @RequestParam(name = "status",required = false) int status){
        
        model.addAttribute("listO",manageOrderService.findOrderByStatus(status));
        model.addAttribute("active", 3);
        return "admin/admin-order-product";
    }
}
