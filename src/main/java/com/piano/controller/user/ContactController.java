/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.user;

import com.piano.dao.ContactDAO;
import com.piano.entity.Contact;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Administrator
 */
@Controller
public class ContactController {

    @Autowired
    private ContactDAO contactDAO;

    @RequestMapping("/contact-us")
    public String contact(
            @RequestParam(name = "email", required = false) String email,
            @RequestParam(name = "phone",required = false) String phone,
            HttpServletRequest request
    ) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm");
        
        if (email != null) {
            Contact contact = new Contact();
            contact.setMessage(message);
            contact.setName(name);
            contact.setSubjectContact(subject);
            contact.setPhone(phone);
            contact.setEmail(email);
            contact.setDate(dateFormat.format(date));
            contactDAO.addContact(contact);
            return "redirect:/home";
        }
        return "user/contact";
    }
}
