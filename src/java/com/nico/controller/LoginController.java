/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nico.controller;

import com.nico.bean.LoginBean;
import com.nico.dao.UserDao;
import com.nico.model.User;
import com.nico.utils.PasswordDigest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */

@Controller
@RequestMapping("/log")
public class LoginController {
    
    @Autowired
    UserDao ud;
    
    @RequestMapping() 
    public String goLogin(Model model) {
        LoginBean loginBean = new LoginBean();
        model.addAttribute("loginBean", loginBean);
        return "login";
    }
    
    @RequestMapping("/in")
    public String submitLogin(HttpSession session, @ModelAttribute("loginBean") LoginBean loginBean,
            HttpServletResponse response, Model model){
        User user = ud.findByUsername(loginBean.getUsername());
        if(user.getUsername()==null) {
            model.addAttribute("errMsg", "Username salah");
            return "login";
        }
        String encryptedPassword = PasswordDigest.createEncryptedPassword(loginBean.getPassword());
        if(!encryptedPassword.equals(user.getPassword())) {
            model.addAttribute("errMsg", "Password salah");
            return "login";
        }
        
        session.setAttribute("user", user);
        Cookie c = new Cookie("user", user.getName());
        c.setMaxAge(60*60*24);
        response.addCookie(c);
        return "successlogin";
    }
    
    @RequestMapping("/out") 
    public String logout(HttpSession session, Model model) {
        session.invalidate();
        //session.removeAttribute("user");
        return "index";
    }
    
}
