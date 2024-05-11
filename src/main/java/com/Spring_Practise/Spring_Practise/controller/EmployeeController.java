package com.Spring_Practise.Spring_Practise.controller;

import com.Spring_Practise.Spring_Practise.bean.EmployeeBean;
import com.Spring_Practise.Spring_Practise.util.Validators;
import org.hibernate.validator.internal.engine.validationcontext.ValidatorScopedContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EmployeeController {

    @Autowired
    JdbcTemplate stmt;

    @GetMapping("/newemployee")
    public String newEmployee() {
        return "NewEmployee";
    }

    @PostMapping("saveEmployee")
    public  String saveEmployee(EmployeeBean employee, Model model){
        boolean isError = false;
        if(Validators.isEmpty(employee.getFirstName())){
            isError = true;
            model.addAttribute("firstNameError", "Please enter first name");
        }else if(Validators.isAlpha(employee.getFirstName()) == false){
            isError = true;
            model.addAttribute("firstNameError", "Please enter Valid name");
        }
        if(Validators.isEmpty(employee.getEmail())){
            isError = true;
            model.addAttribute("emailError", "Please enter email");
        }
        if(Validators.isEmpty(employee.getGender())){
            isError = true;
            model.addAttribute("genderError", "Please enter gender");
        }
        if(employee.getCity().equals(("-1"))){
            isError = true;
            model.addAttribute("cityError", "Please Select city");
        }
        model.addAttribute("employee", employee);
        if(isError == true){
            return "NewEmployee";
        }else{
            return "ViewEmployee";
        }
    }
}
