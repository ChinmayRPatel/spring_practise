package com.Spring_Practise.Spring_Practise.controller;


import com.Spring_Practise.Spring_Practise.bean.StudentBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class StudentController {

    // open jsp --method ----1
    @GetMapping("/inputstudent")
    public String inputStudent() {
        return  "InputStudent";
    }

    @PostMapping("/calculateResult")
    public  String calculateResult(StudentBean student, Model model){
        boolean isError=false;
        if(student.getStudentName() == null || student.getStudentName().trim().length() == 0 ){
            isError=true;
            model.addAttribute("StudentNameError", "Please Enter Student Name");
        }
        if(student.getPerc() ==null ){
            isError=true;
            model.addAttribute("StudentPercError", "Please Enter Student Perc");
        }if(student.getBornYear() ==null){
            isError = true;
            model.addAttribute("StudentBornYearError", "Please Enter Student Born Year");
        }

        model.addAttribute("student", student);
        if(isError ==true){
            return "Inputstudent";
        }else{
            String result="";
            if(student.getPerc() < 35 ){
                System.out.println("NOT ELIG");
                result = "NOT ELIG";
            }else if(student.getPerc() >= 90 ){
                System.out.println("Grater than 90 == X");
                result = "Grater than 90 = X";
            } else if (student.getPerc() >= 70) {
                System.out.println("Grater than 70 == B");
                result = "Grater than 70 = B";
            } else {
                System.out.println(" A");
                result = "A";
            }
            model.addAttribute("result", result);
            return "StudentResult";
        }
    }


}
