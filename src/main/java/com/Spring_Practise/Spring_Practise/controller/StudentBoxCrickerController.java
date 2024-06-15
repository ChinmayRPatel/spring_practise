package com.Spring_Practise.Spring_Practise.controller;

import com.Spring_Practise.Spring_Practise.bean.StudentBoxCricketBean;
import com.Spring_Practise.Spring_Practise.util.Validators;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class StudentBoxCrickerController {

    @GetMapping("/boxcricketregistration")
    public String boxRegistration() {
        return "BoxCricketReg";// jsp name
    }


    @PostMapping("/savereg")
    public String saveRegistration(StudentBoxCricketBean studentBox, Model model) {
        // bean ->variable : jsp form
        System.out.println(studentBox.getStudentName());
        System.out.println(studentBox.getPlayerType());
        System.out.println(studentBox.getFoodPreference());
        System.out.println(studentBox.getDrink());

        boolean isError = false;
        String alphaRegEx = "[a-zA-Z]+";// a-zA-z ? min : 1 max : n time

        if (Validators.isEmpty(studentBox.getStudentName())) {
            isError = true;
            model.addAttribute("studentNameError", "Please Enter Student Name");
        } else if (Validators.isAlpha(studentBox.getStudentName()) == false) {
            isError = true;
            model.addAttribute("studentNameError", "Please Enter Valid Student Name");
        } else {
            model.addAttribute("studentNameValue", studentBox.getStudentName());
        }

        if (studentBox.getPlayerType() == null) {
            isError = true;
            model.addAttribute("playerTypeError", "Please Select PlayerType");
        } else {
            model.addAttribute("playerTypeValue", studentBox.getPlayerType());
        }

        if (studentBox.getFoodPreference().equals("-1") == true) {
            isError = true;
            model.addAttribute("foodPreferenceError", "Please Select FoodPreference");
        } else {
            model.addAttribute("foodPreferenceValue", studentBox.getFoodPreference());// regular
        }

        // if none -> drink - null
        // drink=>rb
        // drink=>rb,co

        if (studentBox.getDrink() == null) {
            isError = true;
            model.addAttribute("drinkError", "Please Select Atleast one Drink");

        } else {
            model.addAttribute("drinkValue", studentBox.getDrink());
        }

        model.addAttribute("reg", studentBox);//reg.playerType reg.drink reg.studentName reg.foodPreference

        if (isError == true) {
            return "BoxCricketReg";
        } else {
            // how to send data to jsp from controller ?
            // model.addAttribute("reg", studentBox);// data name -> data value
            return "RegDetail";
        }
    }
}
