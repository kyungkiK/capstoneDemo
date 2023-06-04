package com.capstone.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberTO {
    private int id;
    private String username;
    private String email;
    private String password;
    private String role;
    private String nickname;

}
