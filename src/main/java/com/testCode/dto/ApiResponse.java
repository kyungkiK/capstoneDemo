package com.testCode.dto;


public class ApiResponse {
    private String message;
    private boolean success;
    private int id; // 추가한 id 필드

    public ApiResponse(String message, boolean success) {
        this.message = message;
        this.success = success;
    }

    // 게터 및 세터 포함
}