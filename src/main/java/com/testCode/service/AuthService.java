package com.testCode.service;

import com.testCode.dto.MemberTO;
import com.testCode.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthService {
    private final MemberRepository memberRepository;

    private final PasswordEncoder passwordEncoder;

    public void registerMember(String username, String email, String password, String phone_Number) {

        MemberTO to = new MemberTO(username, email, password, phone_Number);
        to.setRole("ROLE_USER");
        // 비밀번호 암호화
        to.setPassword(passwordEncoder.encode(to.getPassword()));
        memberRepository.save(to);
    }

    public boolean login(String email, String password) {
        MemberTO to = memberRepository.findByEmail(email);
        if (to != null && passwordEncoder.matches(password, to.getPassword())) {
            return true; // 로그인 성공
        }
        return false; // 로그인 실패
    }
}
