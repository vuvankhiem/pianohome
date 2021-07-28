/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao;

import com.piano.entity.User;
import java.util.List;





/**
 *
 * @author Administrator
 */
public interface UserDAO {
    public List<User> findUsersByPage(int page);
    public User getUserByEmail(String email);
    public User getUserByID(int id);
    public void addUser(User user);
    public void updateUser(User user); 
    public long countUsers();
    public List<User> findUser(String name);
    
}
