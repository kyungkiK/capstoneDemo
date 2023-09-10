package com.capstone.service;

import lombok.RequiredArgsConstructor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import java.util.Random;

@Service
@RequiredArgsConstructor
public class MailService {
    private int authNumber;
    private final JavaMailSender mailSender;
    private static final String FROM_ADDRESS = "hscapstone1@gmail.com"; // 이부분도 너희 캡스톤 쥐메일 ㄱㄱ

    public void makeRandomNumber() {
        // 난수의 범위 111111 ~ 999999 (6자리 난수)
        Random r = new Random();
        int checkNum = r.nextInt(888888) + 111111;
        System.out.println("인증번호 : " + checkNum);
        authNumber = checkNum;
    }

    public String mailSender(String mail) {

        makeRandomNumber();

        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();

        simpleMailMessage.setTo(mail);
        simpleMailMessage.setFrom(FROM_ADDRESS);
        simpleMailMessage.setSubject("[ 서비스 명 ] 학교 메일 인증번호 입니다.");
        simpleMailMessage.setText(" 메일 인증번호 입니다. 인증번호 : " + authNumber);

        mailSender.send(simpleMailMessage);

        return  Integer.toString(authNumber);
    }

}
