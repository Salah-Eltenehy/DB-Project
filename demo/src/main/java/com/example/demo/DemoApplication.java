package com.example.demo;

import com.example.demo.services.DBAgent;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
        String title ="of";
        System.out.println();
//        DBAgent dbAgent = DBAgent.getInstance();
//        System.out.println("db created");
//        dbAgent.con
    }

}
