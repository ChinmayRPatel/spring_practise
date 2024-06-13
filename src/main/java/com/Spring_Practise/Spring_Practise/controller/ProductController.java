package com.Spring_Practise.Spring_Practise.controller;

import com.Spring_Practise.Spring_Practise.bean.ProductBean;
import com.Spring_Practise.Spring_Practise.util.Validators;
import org.springframework.boot.autoconfigure.web.embedded.TomcatVirtualThreadsWebServerFactoryCustomizer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class ProductController {

    @GetMapping("/newproduct")
    public String newProduct() {
        return "NewProduct";// jsp name - jsp open
    }

    @PostMapping("/saveproduct")
    public String saveProduct(ProductBean product, Model model) {

        // String productName = request.getParameter("productName");
        // bean
        boolean isError = false;
        if(Validators.isEmpty(product.getProductName())){
            isError = true;
            model.addAttribute("firstNameError", "Please enter product name");
        }
        if(Validators.isEmpty(product.getQty())){
            isError = true;
            model.addAttribute("emailError", "Please enter product Qty");
        }
        if(Validators.isEmpty(product.getCategory())){
            isError = true;
            model.addAttribute("genderError", "Please enter Product Category");
        }
        if(product.getPrice() <= 0 ){
            isError = true;
            model.addAttribute("cityError", "Please Enter Price of Product");
        }

        System.out.println(product.getProductName());
        System.out.println(product.getPrice());
        System.out.println(product.getCategory());
        System.out.println(product.getQty());
//             System.out.println("Name :- " + "Studetn- abc");
//             System.out.println("Player Type :- " + "Bas Man");
//             System.out.println("Food :- " + "Special");
//             System.out.println("Dring  :- " + "CC");
        model.addAttribute("product", product);
         if(isError == false){
                return "ProductDetails";
         }else{

             return "NewProduct";
         }


    }
}
