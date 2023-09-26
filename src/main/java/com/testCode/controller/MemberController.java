package com.testCode.controller;

import com.testCode.dto.MemberTO;
import com.testCode.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @GetMapping("/login")
    public String loginView() {
        return "member/loginpage";
    }

    @GetMapping("/check")
    public boolean checkLoginStatus() {
        // 현재 사용자의 인증 상태를 가져옴
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        // 사용자가 인증되어 있으면 true 반환, 그렇지 않으면 false 반환
        return authentication.isAuthenticated();
    }

    @GetMapping("/join")
    public String joinpage(){
        return "member/joinpage";
    }

    @PostMapping("/join")
    public String joinProccessing(MemberTO to, Model model, String email) {
        model.addAttribute("flag", memberService.memberJoin(to, email));
        return "member/joinok";
    }

    @GetMapping("/mypg")
    public String mypageView(Principal principal, Model model) {
        String loginId = principal.getName();
        MemberTO to = memberService.getMemberByEmail(loginId);
        model.addAttribute("to", to);

        return "member/mypage";
    }


    @GetMapping("/findid")
    public String findId() {

        return "member/findid";
    }

    @GetMapping("/findpass")
    public String findPass(){

        return "member/findpass";
    }

    @PostMapping("/findid")
    public String findId(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
        String username = memberService.findId(email, password);

        model.addAttribute("username", username);

        return "/member/findidok";
    }

    @PostMapping("/updatepassword")
    public String updatePassword(MemberTO to, Model model) {

        int flag = memberService.updatePassword(to);

        model.addAttribute("flag", flag);

        return "/member/updatepasswordok";
    }


}