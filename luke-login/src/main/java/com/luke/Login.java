package com.luke;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class Login {
    public static void main(String[] args) {
        SpringApplication.run(Login.class,args) ;
    }
}
