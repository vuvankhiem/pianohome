/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin;

import com.piano.entity.User;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface ManageUserService {
    public List<User> findUserByPage(int page);
    public User findUserbyId(int id);
    public int endPage();
    public void updateUser(User user);
    public long countUser();
    public List<User> findUser(String name);
}
