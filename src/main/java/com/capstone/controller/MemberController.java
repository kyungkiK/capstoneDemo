package com.capstone.controller;

import com.capstone.dto.MemberTO;
import com.capstone.service.MemberService;
import lombok.RequiredArgsConstructor;
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
    public String loginView () {
        return "member/loginpage";
    }

    @PostMapping("/join")
    public String joinProccessing(MemberTO to, Model model) {
        model.addAttribute("flag", memberService.memberJoin(to));
        return "member/joinok";
    }

    @GetMapping("/mypg")
    public String mypageView(Principal principal, Model model) {
        String loginId = principal.getName();
        MemberTO to = memberService.getMemberByEmail(loginId);
        model.addAttribute("to", to);

        return "mypage";
    }


    @GetMapping("/findid")
    public String findId() {

        return "/member/findIdPage";
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


    @GetMapping("/qna")
    public String qnaView () {
        return "/qna";
    }

    @GetMapping("/cart")
    public String cartView () {
        return "cart";
    }

    @GetMapping("/freeboard")
    public String freeboardView () {
        return "/freeboard";
    }

    @GetMapping("/rental")
    public String rentalView () {
        return "/rental";
    }

    @GetMapping("/search")
    public String searchView () {
        return "/search";
    }

    @GetMapping("/trade")
    public String tradeView () {
        return "/trade";
    }



}
