package com.Spring_Practise.Spring_Practise.bean;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class BoookBean {


    Integer id;

    @NotBlank
    String bookName;

    @NotBlank
    String authorName;

}
