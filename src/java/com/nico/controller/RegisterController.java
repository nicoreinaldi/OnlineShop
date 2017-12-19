/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nico.controller;

import com.nico.bean.RegisterBean;
import com.nico.dao.UserDao;
import com.nico.model.User;
import com.nico.utils.PasswordDigest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reg")
public class RegisterController {
    
    @Autowired
    UserDao ud;
   
    @RequestMapping() 
    public String registerForm(Model model) {
        RegisterBean registerBean = new RegisterBean();
        model.addAttribute("registerBean", registerBean);
        return "formregister";
    }
    
    @RequestMapping(value="/save") 
    public String saveRegistration(@ModelAttribute("registerBean") RegisterBean registerBean, 
            Model model) {
        User user = new User();
        String encryptedPassword = 
                PasswordDigest.createEncryptedPassword(registerBean.getPassword());
        user.setName(registerBean.getName());
        user.setUsername(registerBean.getUsername());
        user.setPassword(encryptedPassword);
        user.setEmail(registerBean.getEmail());
        user.setNoHp(registerBean.getNoHp());
        user.setAddress(registerBean.getAddress());
        
        ud.saveUser(user);
        model.addAttribute("data", registerBean);
        return "formregister";
    }
    
}
