package com.Spring_Practise.Spring_Practise.bean;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;
import org.springframework.validation.annotation.Validated;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class UserBean {
    String firstName;
    String email;
    String password;
}
