/*package com.testCode.controller;

import com.testCode.dto.ApiResponse;
import com.testCode.dto.MemberTO;
import com.testCode.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequiredArgsConstructor
public class AuthController {

    private final AuthService authService;

    @GetMapping("/login")
    public String Login(){
        return "login";
    }

    @GetMapping("/join")
    public String Join(){
        return "join";
    }

    @RequestMapping(value = "/join", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<?> register(HttpServletRequest request) {
        try {
            // 폼 데이터를 추출
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone_number = request.getParameter("phone_number");

            // 이제 추출한 데이터를 이용하여 처리

            authService.registerMember(username, email, password, phone_number);
            return ResponseEntity.ok(new ApiResponse("회원가입에 성공하셨습니다.", true));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(new ApiResponse("이미 가입된 이메일입니다. 다시 회원가입 해주세요.", false));
        }
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody LoginRequest loginRequest) {
        if (authService.login(loginRequest.getEmail(), loginRequest.getPassword())) {
            return ResponseEntity.ok(new ApiResponse("로그인에 성공하셨습니다.", true));
        } else {
            return ResponseEntity.badRequest().body(new ApiResponse("이메일 혹은 비밀번호가 잘못 입력되었습니다. 다시 로그인 해주세요.", false));
        }
    }
}*/