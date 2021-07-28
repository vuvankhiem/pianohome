/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin.Impl;

import com.piano.entity.Contact;
import com.piano.service.admin.ManageContactService;
import com.piano.dao.ContactDAO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class ManageContactServiceImpl implements ManageContactService{

    @Autowired
    private ContactDAO contactDAO;
    
    @Override
    public List<Contact> findAllcontact() {
        return contactDAO.findAllContacts();
    }

    @Override
    public void deleteContactByID(int id) {
        contactDAO.deleteContact(id);
    }

    @Override
    public void deleteAllContact() {
        contactDAO.deleteAllContact();
    }

    @Override
    public void updateContact(int id) {
        Contact contact = contactDAO.findContactByID(id);
        contact.setStatus(1);
        contactDAO.updateContact(contact);
    }

    @Override
    public Contact findContactByID(int id) {
        return contactDAO.findContactByID(id);
    }

    @Override
    public long countContactStatus() {
        return contactDAO.countContactStatus();
    }

    

}
