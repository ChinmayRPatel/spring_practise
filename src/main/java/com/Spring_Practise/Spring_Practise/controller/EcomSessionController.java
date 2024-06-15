package com.Spring_Practise.Spring_Practise.controller;

import com.Spring_Practise.Spring_Practise.bean.EUserBean;
import com.Spring_Practise.Spring_Practise.dao.EUserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EcomSessionController {

    @Autowired
    EUserDao userDao;

    @GetMapping("/esignup")
    public String signup() {
        return "EcomSignup";
    }
    @PostMapping("/esignup")
    public String signupPost(EUserBean userBean) {
        //jsp form -> controller ->

        //validation

        //insert
        userDao.insertUser(userBean);

        return "EcomLogin";
    }

}
