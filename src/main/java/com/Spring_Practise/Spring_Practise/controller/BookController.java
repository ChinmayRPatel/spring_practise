package com.Spring_Practise.Spring_Practise.controller;

import com.Spring_Practise.Spring_Practise.bean.BoookBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class BookController {

    @Autowired
    JdbcTemplate stmt;

    //jsp Open
    @GetMapping("/newbook")
    public String newBook(){
        return "NewBook";
    }
    @PostMapping("/savebook")
    public String saveBook(@Validated BoookBean book, BindingResult result, Model model){
        model.addAttribute("book", book);
        if(result.hasErrors()){
            return "NewBook";
        }else{
            stmt.update("insert into books (bookName,authorName) values (?,?)",book.getBookName(),book.getAuthorName());
            return "ViewBook";
        }

    }

    @GetMapping("/listbooks")
    public String listBooks(Model model){
        List<BoookBean> books = stmt.query("select * from books", new BeanPropertyRowMapper<BoookBean>(BoookBean.class));
        model.addAttribute("books",books);
        return "ListBooks";
    }
}
