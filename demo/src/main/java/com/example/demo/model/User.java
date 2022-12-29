package com.example.demo.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
public class User {
    private String username;
    private String password;
    private String first_name;
    private String last_name;
    private String email;
    private String phone_number;
    private String shipping_address;
    private boolean is_manager;

    public User(String username, String password, String first_name, String last_name,
                String email, String phone_number, String shipping_address, boolean is_manager)
    {
        this.username = username;
        this.password = password;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.phone_number = phone_number;
        this.shipping_address = shipping_address;
        this.is_manager = is_manager;
    }
}
