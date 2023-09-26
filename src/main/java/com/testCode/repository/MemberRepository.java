package com.testCode.repository;

import com.testCode.dto.MemberTO;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MemberRepository extends JpaRepository<MemberTO, Long> {
    MemberTO findByEmail(String email);
}