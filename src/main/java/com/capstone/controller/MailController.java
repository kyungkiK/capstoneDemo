package com.capstone.controller;

import com.capstone.service.MailService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequiredArgsConstructor
public class MailController {

    private final MailService mailService;

    @PostMapping("/mail-auth")
    @ResponseBody
    public String mailAuth(@RequestParam("mail") String mail) {
        String systemAuthNumber = mailService.mailSender(mail);
        return systemAuthNumber;
    }
}
