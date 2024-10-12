package org.spring.mvcht.controller;

import org.spring.mvcht.entity.User;
import org.spring.mvcht.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController
{
    @Autowired
    private UserService userService;

    @RequestMapping("home")
    public String home(){
        return "home";
    }

    @RequestMapping("register")
    public String register(){
        return "register";
    }
    @RequestMapping(path = "/createUser", method = RequestMethod.POST)
    public String registerUser(@ModelAttribute User user, Model mo){
        userService.registerUser(user);
//        mo.addAttribute("msg", "Пользователь зарегистрирован успешно!");
//        return "register";
        mo.addAttribute("user", user);
        return "success";
    }
}
