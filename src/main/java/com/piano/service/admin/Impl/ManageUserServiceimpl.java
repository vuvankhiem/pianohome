/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin.Impl;

import com.piano.dao.UserDAO;
import com.piano.entity.User;
import com.piano.service.admin.ManageUserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class ManageUserServiceimpl implements ManageUserService{

    
    @Autowired
    private UserDAO userDAO;
    
    @Override
    public List<User> findUserByPage(int page) {
        return userDAO.findUsersByPage((page-1)*9);
    }

    @Override
    public int endPage() {
        long count = userDAO.countUsers();
        int endPage = (int) (count/9);
        if(count%9!=0){
            endPage++;
        }
        return endPage;
    }

    @Override
    public void updateUser(User user) {
        userDAO.updateUser(user);
    }

    @Override
    public User findUserbyId(int id) {
        return userDAO.getUserByID(id);
    }

    @Override
    public long countUser() {
        return userDAO.countUsers();
    }

    @Override
    public List<User> findUser(String name) {
        return userDAO.findUser(name);
    }
    
}
