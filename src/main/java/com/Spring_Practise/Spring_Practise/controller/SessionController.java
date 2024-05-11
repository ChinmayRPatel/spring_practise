package com.Spring_Practise.Spring_Practise.controller;

import com.Spring_Practise.Spring_Practise.bean.UserBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.jar.JarOutputStream;

@Controller
public class SessionController {
    @GetMapping("/signup")
    public String signup() {
        return "Signup";
    }
    @GetMapping("/login")
    public String login() {
        return "Login";
    }
    @GetMapping("/")
    public String welcome() {
        return "Welcome";
    }

    @PostMapping("/saveuser")
    public String saveuser(UserBean user) {
        System.out.println(user.getFirstName());
        System.out.println(user.getEmail());
        System.out.println(user.getPassword());

        return "Login";
    }

}
