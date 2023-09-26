<%--
  Created by IntelliJ IDEA.
  User: rudrl
  Date: 2023-09-17
  Time: 오후 3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<div class="login-content login-content-signin" ng-hide="showSignIn">
    <div>
        <h2>로그인</h2>
        <ul class="link">
            <li><a href="#" id="reset">RESET</a></li>
            <li>&nbsp;|&nbsp;</li>
            <li><a href="/" id="main">MAIN</a></li>
        </ul>
        <form method="post" action="/login/success" class="wrapper-box" role="form" ng-submit="login()">
            <div class="input__block">
                <input type="text"
                       ng-model="email"
                       class="form-control form-control-email"
                       placeholder="이름 입력"
                       name="username"
                       required>
            </div>
            <div class="input__block">
                <input type="password"
                       ng-model="password"
                       class="form-control form-control-password"
                       placeholder="비밀번호 입력"
                       name="password"
                       required >
            </div>
            <a class="outer-link pull-left" href="/findid">아이디 찾기 | 비밀번호 재설정</a>
            <button type="submit" class="btn btn-submit btn-default pull-right">로그인</button>
        </form>
    </div>
</div>
</body>
</html>
