package com.capstone.service;

import com.capstone.dto.MemberTO;
import com.capstone.repository.MemberMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final MemberMapper memberMapper;

    private final PasswordEncoder passwordEncoder;

    public int memberJoin(MemberTO to) {

        to.setRole("ROLE_USER");
        to.setPassword(passwordEncoder.encode(to.getPassword()));

        int result = memberMapper.save(to);
        int flag = 1;

        if (result == 1) {
            flag = 0;
        } else {
            flag = 1;
        }
        return flag;
    }

    public String findId(String email, String password) {

        if (passwordEncoder.matches(password, memberMapper.checkPassword(email))) {

            String username = memberMapper.findId(email);
            return username;

        } else {

            String username = "x";
            return username;

        }
    }

    public int updatePassword(MemberTO to) {

        int flag = 1;

        if(memberMapper.checkMember(to.getUsername(), to.getEmail()) != null) {

            String encodedPassword = passwordEncoder.encode(to.getPassword());

            int result = memberMapper.updatePassword(to.getUsername(), to.getEmail(), encodedPassword);

            if(result == 1) {

                flag = 0;


            } else {

                flag = 1;

            }
        } else {

            flag = 1;

        }

        return flag;
    }


    public MemberTO getMemberByEmail(String username) {

        MemberTO to = memberMapper.showMember(username);

        return to;
    }
}
