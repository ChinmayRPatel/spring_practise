package com.Spring_Practise.Spring_Practise.util;

public class Validators {
    public static boolean isEmpty(String str){
        if(str == null || str.trim().length() == 0){
            return true;
        }else{
            return false;
        }
    }
    public static boolean isAlpha(String str){
        String alphaRegex = "[a-zA-Z]+";
        return  str.matches(alphaRegex);
    }
}
