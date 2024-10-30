package org.springboot.learnspringboot.controller;

import org.springboot.learnspringboot.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class UserController {
    @GetMapping("variable-expression")
    public String variableExpression(Model model){
        User user = new User("Igor", "igor@gmail.com", "ADMIN", "Male");
        return "variable-expression";
    }

    @GetMapping("selection-expression")
    public String selectionExpression(Model model){
        User user = new User("Igor", "igor@gmail.com", "ADMIN", "Male");
        model.addAttribute("user", user);
        return "selection-expression";
    }
    @GetMapping("message-expression")
    public String messageExpression(){

        return "message-expression";
    }
    @GetMapping("link-expression")
    public String linkExpression(){
        return "link-expression";
    }
    @GetMapping("fragment-expression")
    public String fragmentExpression(){
        return "fragment-expression";
    }
    @GetMapping("users")
    public String users(Model model){
        User admin = new User("Igor", "igor@gmail.com", "ADMIN", "Male");
        User user1 = new User("Misha", "misha@gmail.com", "USER", "Male");
        User user2 = new User("Alina", "alina@gmail.com", "USER", "Female");
        List<User> users = new ArrayList<User>();
        users.add(admin);
        users.add(user1);
        users.add(user2);
        model.addAttribute("users", users);
        return "users";
    }
    @GetMapping("if-unless")
    public String ifUnless(Model model){
        User admin = new User("Igor", "igor@gmail.com", "ADMIN", "Male");
        User user1 = new User("Misha", "misha@gmail.com", "USER", "Male");
        User user2 = new User("Alina", "alina@gmail.com", "USER", "Female");
        List<User> users = new ArrayList<User>();
        users.add(admin);
        users.add(user1);
        users.add(user2);
        model.addAttribute("users", users);
        return "if-unless";
    }
    @GetMapping("switch-case")
    public String switchCase(Model model){
        User user = new User("Igor", "igor@gmail.com", "GUEST", "Male");
        model.addAttribute("user", user);
        return "switch-case";
    }



}
