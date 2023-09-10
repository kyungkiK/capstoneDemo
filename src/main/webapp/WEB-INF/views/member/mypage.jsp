<%@ page import="com.capstone.dto.MemberTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/mypg">${principal.to.username}</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/logout">Log-out</a></li>
                </sec:authorize>
                <sec:authorize access="isAnonymous()">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/login">Log-in</a></li>
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
<!-- Header-->
<header class="bg-dark py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">마이페이지</h1>
        </div>
    </div>
</header>
<!-- Section-->
<section class="memberInfo">
    <div class="container px-4 px-lg-5 mt-5" align="center">
        <div class="fuck">
            <img src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" style="max-width:100%; height:auto;">
        </div>
            <div class="memberInfo">
                <p class="lead fw-normal mb-0" hidden="hidden"> ${to.id} </p>
                <p class="lead fw-normal mb-0">이름 : ${to.username}</p>
                <p class="lead fw-normal mb-0">이메일 : ${to.email}</p>
                <p class="lead fw-normal mb-0">닉네임 : ${to.nickname}</p>
                <p class="lead fw-normal mb-0">권한 : ${to.role}</p>
            <div class="button">
                <a class="btn btn-outline-dark mt-auto" href="/emailAuth">이메일 인증</a>
                <a class="btn btn-outline-dark mt-auto" href="#">정보 수정</a>
                <a class="btn btn-outline-dark mt-auto" href="/delete">회원 탈퇴</a>
            </div>
        </div>
    </div>
</section>
<p> </p>


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
