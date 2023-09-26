<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>한신대 중고 플리마켓</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico">
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet">

    <style>
        .navbar-expand-lg {
            position: fixed;
            top: 0;
            /* width: 100% */
            left: 0;
            right: 0;
            /* 생략 */
        }
        .container px-4 px-lg-5 {
            position: fixed;
            top: 0;
            /* width: 100% */
            left: 0;
            right: 0;
            /* 생략 */
        }
        .login-page .login-content h2 {
            text-align: center;
            color: #41464b;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin: 0;
            font-size: 30px;
            font-weight: bold;
        }

        .login-page .login-content form.wrapper-box {
            margin-top: 40px;
        }
        .login-page .login-content form.wrapper-box input {

            text-align: center;
            width: 400px;
            margin-top: 20px;
            margin-left: 0;
            border: none;
            border-bottom: 1px solid rgba(0, 0, 0, 0.1);
            border-radius: 0;
            padding: 10px;
            box-shadow: none;
            transition: all 0.1s ease-out;
        }
        .login-page .login-content form.wrapper-box input:valid {
            border-bottom: 1px solid #41464b;
        }
        .login-page .login-content form.wrapper-box input:focus:invalid {
            border-bottom: 1px solid #EF6161;
        }
    </style>
</head>

<body>

<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal"/>
</sec:authorize>


<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="/">원플리마켓</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item"><a class="nav-link" href="/qna">질문</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">거래 | 대여</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/search">모든 상품 검색</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="/trade">중고 물품 거래</a></li>
                        <li><a class="dropdown-item" href="/rental">물품 대여</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link" href="/freeboard">자유 게시판</a></li>
                <li class="nav-item"><a class="nav-link" href="/check">로그인확인</a></li>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/mypg">${principal.to.username}</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/logout">Log-out</a></li>
                </sec:authorize>
                <sec:authorize access="isAnonymous()">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/login">Log-in</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/join">Join</a></li>
                </sec:authorize>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <form class="d-flex" action="/cart">
                    <button class="btn btn-outline-dark" type="submit">
                        <i class="bi-cart-fill me-1"></i>
                        Cart
                        <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                    </button>
                </form>
            </ul>
        </div>
    </div>
</nav>
<!--Section Empty-->
<section class="py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-black">

        </div>
    </div>
</section>

<!--Section Main-->
<section class="py-5">
    <div class="login-page" ng-app="">
        <div class="login-content login-content-signup " ng-show="showSignIn">
            <div>
                <h2>아이디 찾기</h2>
                <form action="/findid" method="post" class="wrapper-box" role="form" ng-submit="register()">
                    <div class="input__block" align="center">
                        <input type="email"
                               ng-model="email"
                               class="form-control form-control-email"
                               placeholder="이메일 입력"
                               name="email"
                               required>
                    </div>
                    <div class="input__block" align="center">
                        <input type="password"
                               ng-model="password"
                               class="form-control form-control-password"
                               placeholder="비밀번호 입력"
                               name="password"
                               required >
                    </div>
                    <div class="input__block" align="center">
                        <input type="submit"
                               style= "
                           margin-top: 50px;
                           border: 2px solid #41464b;
                           background: #41464b;
                           border-radius: 15px;
                           padding: 3px 12px 5px 12px;
                           color: #fff;
                           font-size: 20px;
                           font-weight: bold;
                           letter-spacing: 0px;
                           transition: all 0.1s ease-out;
                            "
                               value="회원가입" >
                    </div>

                </form>
            </div>
        </div>
    </div>
</section>

<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container"><p class="m-0 text-center text-white">Copyright © Your Website 2023</p></div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>


</body>
</html>
