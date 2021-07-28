/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.piano.service.admin.ManageContactService;
import javax.servlet.http.HttpSession;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Administrator
 */
@Controller
public class ManageContactsController {

    @Autowired
    private JavaMailSender javaMailSender;
    @Autowired
    private ManageContactService contactService;

    @RequestMapping("admin/manage-contact")
    public String manageContact(Model model, HttpSession session) {

        model.addAttribute("listC", contactService.findAllcontact());
        model.addAttribute("active", 5);
        return "admin/admin-manage-contact";
    }

    @RequestMapping("admin/update-contact-status")
    public void updateStatus(@RequestParam(name = "id", required = false) int id,Model model) {
        contactService.updateContact(id);
    }

    @RequestMapping("admin/contact-detail")
    public String contactDetail(@RequestParam(value = "id", required = false) int id, Model model) {
        model.addAttribute("contact", contactService.findContactByID(id));
        return "admin/admin-contact-detail";
    }

    @RequestMapping("admin/reply")
    public String reply(@RequestParam(name = "email", required = false) String email,
            @RequestParam(name = "subject", required = false) String subject,
            @RequestParam(name = "message", required = false) String message) {

        SimpleMailMessage mail = new SimpleMailMessage();
        mail.setTo(email);
        mail.setSubject(subject);
        mail.setText(message);
        this.javaMailSender.send(mail);
        return "redirect:manage-contact";
    }

    @RequestMapping("admin/delete-contact")
    public String deleteContact(@RequestParam(name = "id", required = false) int id) {
        contactService.deleteContactByID(id);
        return "redirect:manage-contact";
    }
}
