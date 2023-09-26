package com.testCode.controller;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginRequest {
    private String email;
    private String password;
    private String name; // 추가한 name 필드
    private String role; // 추가한 role 필드
    private String phone_number; // 추가한 phone_number 필드

    public LoginRequest(String email, String password, String name, String role, String phone_number) {
        this.email = email;
        this.password = password;
        this.name = name;
        this.role = role;
        this.phone_number = phone_number;
    }

    // 게터 및 세터 포함
}