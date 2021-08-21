/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.user;

import com.piano.dao.UserDAO;
import com.piano.dto.UserDTO;
import com.piano.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.regex.Pattern;

/**
 * @author Administrator
 */
@Controller
public class HandleAuthenticationController {
    @Autowired
    private JavaMailSender javaMailSender;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserDAO userDAO;

    private static String emailS = "";
    private static String roleS = "";
    private static String f_name = "";
    private static String l_name = "";
    private static String encode = "";

    @RequestMapping("/redirect")
    public String redirect(HttpServletRequest request) {
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping("/login-page")
    public String login(@RequestParam(name = "err", required = false) String err, Model model) {

        if (err != null) {
            model.addAttribute("err", "Tài khoản hoặc mật khẩu không đúng !");
        }

        return "user/login";
    }


    @RequestMapping("/login-sucess")
    public String loginSucess(Principal principal, HttpSession session) {
        String email = principal.getName();
        User user = userDAO.getUserByEmail(email);
        UserDTO userDTO = new UserDTO();
        userDTO.setEmail(user.getEmail());
        userDTO.setUserID(user.getUserID());
        userDTO.setFirstName(user.getFirstName());
        userDTO.setLastName(user.getLastName());
        session.setAttribute("us", userDTO);
        if (user.getRole().equals("ADMIN")) {
            return "redirect:/admin";
        }
        return "redirect:/home";
    }

    //Register Account
    @RequestMapping(value = "/register")
    public String register(@RequestParam(name = "first_name", required = false) String firstName,
                           @RequestParam(name = "last_name", required = false) String lastName,
                           @RequestParam(name = "role", required = false, defaultValue = "USER") String role,
                           @RequestParam(name = "password", required = false) String password,
                           @RequestParam(name = "confirm-password", required = false) String confirm_password,
                           @RequestParam(name = "email", required = false) String email,
                           @RequestParam(name = "confirm", required = false, defaultValue = "false") boolean confirm,
                           Model model,
                           HttpServletRequest request) {
        Pattern p = Pattern.compile("^<script>|</script>$");

        if (confirm == true || email != null) {
            User user = userDAO.getUserByEmail(email);
            if (confirm == true) {
                user.setFirstName(f_name);
                user.setLastName(l_name);
                user.setEmail(emailS);
                user.setPassWord(encode);
                user.setRole(roleS);
                user.setActive(true);
                userDAO.addUser(user);
                return "user/login";
            }
            if(p.matcher(firstName).find()||p.matcher(lastName).find()){
                model.addAttribute("err", "FirstName hoặc LastName không hợp lệ");
                return "user/register";
            }else {

                if (user.getUserID() == 0 && email != null) {

                    if (password.equals(confirm_password)) {
                        encode = passwordEncoder.encode(password);
                        f_name = firstName;
                        l_name = lastName;
                        emailS = email;
                        roleS = role;

                        String link = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()+"/register?confirm=true";
                        System.out.println(link);
                        String confirm_link = "Click link : " + link + " để xác thực ";
                        SimpleMailMessage message = new SimpleMailMessage();
                        message.setTo(email);
                        message.setSubject("Xác thực tài khoản");
                        message.setText(confirm_link);
                        this.javaMailSender.send(message);
                        model.addAttribute("notify", "Đăng kí thành công. Quý khách vui lòng xác thực tài khoản trong Gmail !");
                        return "user/login";
                    } else {
                        model.addAttribute("err", "Mật khẩu không khớp");
                    }

                } else if (user.getUserID() != 0) {
                    model.addAttribute("err", "Tài khoản của bạn đã tồn tại");
                }

            }




        }

        return "user/register";
    }

    @RequestMapping("/forgot-password")
    public String forgotPass(Model model,
                             @RequestParam(name = "password", required = false) String password,
                             @RequestParam(name = "confirm-password", required = false) String confirm_password,
                             @RequestParam(name = "email", required = false) String email,
                             @RequestParam(name = "confirm", required = false, defaultValue = "false") boolean confirm,
                             HttpServletRequest request) {

        User user = new User();
        if (email != null || confirm == true) {

            user = userDAO.getUserByEmail(email);
            if (user.getEmail() != null) {
                if (password.equals(confirm_password)) {
                    encode = passwordEncoder.encode(password);
                    emailS = email;
                    String link = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() +"/forgot-password?confirm=true";

                    String confirm_link = " Click link : " + link + " để xác thực";
                    SimpleMailMessage message = new SimpleMailMessage();
                    message.setTo(email);
                    message.setSubject("Xác thực tài khoản");
                    message.setText(confirm_link);
                    this.javaMailSender.send(message);
                    model.addAttribute("notify", "Vui lòng xác thực tài khoản trong Gmail của bạn !");
                    return "user/login";
                } else {
                    model.addAttribute("error", "Mật khẩu không khớp !");
                }
            } else {
                model.addAttribute("error", "Tài khoản của bạn chưa tồn tại !");
            }
            if (confirm == true) {
                user = userDAO.getUserByEmail(emailS);
                user.setPassWord(encode);
                userDAO.updateUser(user);
                return "user/login";
            }
        }
        return "user/forgot-password";
    }
}
