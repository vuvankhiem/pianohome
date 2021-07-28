/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user.Impl;


import com.piano.dao.UserDAO;
import com.piano.entity.User;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class UserDetailServiceImpl implements UserDetailsService{

    @Autowired
    private UserDAO userDAO;
    
    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userDAO.getUserByEmail(email);
        if (user!=null) {
            List<GrantedAuthority> grantedAuthoritys = new ArrayList<>();
            GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_"+user.getRole());
            grantedAuthoritys.add(authority);
            return  new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassWord(), true, true, true, user.getActive(), grantedAuthoritys);
        }else{
            new UsernameNotFoundException("Not found!");
        }
        return null;
    }
    
}
