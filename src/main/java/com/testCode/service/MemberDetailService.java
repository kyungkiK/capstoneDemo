package com.testCode.service;

import com.testCode.dto.MemberTO;
import com.testCode.repository.MemberMapper;
import com.testCode.security.MemberDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberDetailService implements UserDetailsService {

    private final MemberMapper memberMapper;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        MemberTO to = memberMapper.findByUsername(username);

        if (to != null) {
            return new MemberDetails(to); // 인증 객체 반환
        }
        return null;
    }
}
