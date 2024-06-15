package com.Spring_Practise.Spring_Practise.dao;

import com.Spring_Practise.Spring_Practise.bean.EUserBean;
import lombok.experimental.Accessors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;



//singleton -> new -> @Autowired
@Repository
public class EUserDao {

    @Autowired // instance eject
    JdbcTemplate stmt; // update() query()

    public void insertUser(EUserBean userBean) {
        // query ->
        stmt.update("insert into users(firstName,email,password) values (?,?,?) ", userBean.getFirstName(),
                userBean.getEmail(), userBean.getPassword());

    }

}

