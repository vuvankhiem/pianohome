/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin;

import com.piano.entity.Contact;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface ManageContactService {
    public List<Contact> findAllcontact();
    public void deleteContactByID(int id);
    public void deleteAllContact();
    public void updateContact(int id);
    public Contact findContactByID(int id);
    public long countContactStatus();
}
