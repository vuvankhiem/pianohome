/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao;

import com.piano.entity.Contact;
import java.util.List;



/**
 *
 * @author Administrator
 */
public interface ContactDAO {
    public void addContact(Contact contact);
    public List<Contact> findAllContacts();
    public void deleteContact(int id);
    public void deleteAllContact();
    public long countContactStatus();
    public void updateContact(Contact contact);
    public Contact findContactByID(int id);
}
