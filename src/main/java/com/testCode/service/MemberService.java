package com.testCode.service;

import com.testCode.dto.MemberTO;
import com.testCode.repository.MemberMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final MemberMapper memberMapper;

    private final PasswordEncoder passwordEncoder;

    public int memberJoin(MemberTO to, String email) {

        to.setRole("ROLE_USER");
        to.setPassword(passwordEncoder.encode(to.getPassword()));

        int count = memberMapper.selectByEmail(email);
        int result = memberMapper.save(to);
        int flag = 1;

        if(count > 0){
            flag = 1;
        } else {
            if (result == 1) {
                flag = 0;
            } else {
                flag = 1;
            }
        } return flag;
    }

    public String checkLoginStatus(HttpServletRequest request){
        HttpSession session = request.getSession(true);

        if(session != null && session.getAttribute("login") != null) {
            return "true";
        } else {
            return "false";
        }
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

        if (memberMapper.checkMember(to.getUsername(), to.getEmail()) != null) {

            String encodedPassword = passwordEncoder.encode(to.getPassword());

            int result = memberMapper.updatePassword(to.getUsername(), to.getEmail(), encodedPassword);

            if (result == 1) {

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
