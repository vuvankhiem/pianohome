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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.apache.commons.lang3.RandomStringUtils;
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

    private static String st_email = "";
    private static String st_role = "";
    private static String st_f_name = "";
    private static String st_l_name = "";
    private static String st_password = "";
    private static String st_code = "";

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
                           Model model,
                           HttpServletRequest request) {
        Pattern p = Pattern.compile("^<script>|</script>$");
        if (email != null) {
            User user = userDAO.getUserByEmail(email);
            if(p.matcher(firstName).find()||p.matcher(lastName).find()){
                model.addAttribute("err", "FirstName hoặc LastName không hợp lệ");
                return "user/register";
            }else {
                if (user.getUserID() == 0) {
                    if (password.equals(confirm_password)) {
                        st_password = passwordEncoder.encode(password);
                        st_f_name = firstName;
                        st_l_name = lastName;
                        st_email = email;
                        st_role = role;
                        st_code = RandomStringUtils.randomAlphanumeric(12);
                        String link = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()+"/register/verify/"+st_code;
                        System.out.println(link);
                        String confirm_link = "Click link : " + link + " để xác thực ";
                        SimpleMailMessage message = new SimpleMailMessage();
                        message.setTo(email);
                        message.setSubject("Xác thực tài khoản");
                        message.setText(confirm_link);
                        this.javaMailSender.send(message);
                        model.addAttribute("notify", "Vui lòng xác thực tài khoản trong Gmail của bạn !");
                        return "user/register";
                    } else {
                        model.addAttribute("err", "Mật khẩu không khớp");
                    }

                } else{
                    model.addAttribute("err", "Tài khoản của bạn đã tồn tại");
                }
            }
        }

        return "user/register";
    }
    @RequestMapping(value = "/register/verify/{code}")
    public String verifyRegister(@PathVariable String code,
                                 Model model){
        User user = new User();
        if(st_code!=null){
            if (st_code.equals(code)) {
                user.setFirstName(st_f_name);
                user.setLastName(st_l_name);
                user.setEmail(st_email);
                user.setPassWord(st_password);
                user.setRole(st_role);
                user.setActive(true);
                userDAO.addUser(user);
                st_code = null;
                return "redirect:/login-page";
            }else {
                model.addAttribute("err", "Xác minh thất bại !");
            }
        }
        return "user/register";
    }
    //forgot password
    @RequestMapping("/forgot-password")
    public String forgotPass(Model model,
                             @RequestParam(name = "password", required = false) String password,
                             @RequestParam(name = "confirm-password", required = false) String confirm_password,
                             @RequestParam(name = "email", required = false) String email,
                             HttpServletRequest request) {

        User user = new User();
        if (email != null) {
            user = userDAO.getUserByEmail(email);
            if (user.getEmail() != null) {
                if (password.equals(confirm_password)) {
                    st_password = passwordEncoder.encode(password);
                    st_email = email;
                    st_code = RandomStringUtils.randomAlphanumeric(12);
                    String link = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() +"/forgot-password/verify/"+st_code;
                    String confirm_link = " Click link : " + link + " để xác thực";
                    SimpleMailMessage message = new SimpleMailMessage();
                    message.setTo(email);
                    message.setSubject("Xác thực tài khoản");
                    message.setText(confirm_link);
                    this.javaMailSender.send(message);
                    model.addAttribute("notify", "Vui lòng xác thực tài khoản trong Gmail của bạn !");
                    return "user/forgot-password";
                } else {
                    model.addAttribute("error", "Mật khẩu không khớp !");
                }
            } else {
                model.addAttribute("error", "Tài khoản của bạn chưa tồn tại !");
            }
        }
        return "user/forgot-password";
    }
    @RequestMapping("/forgot-password/verify/{code}")
    public String verifyForgotPassword(@PathVariable String code,
                                       Model model){
        User user = new User();
        if (st_code.equals(code)) {
            user = userDAO.getUserByEmail(st_email);
            user.setPassWord(st_password);
            userDAO.updateUser(user);
            return "redirect:/login-page";
        }else {
            model.addAttribute("error", "Xác minh thất bại !");
        }
        return "user/forgot-password";
    }
}
