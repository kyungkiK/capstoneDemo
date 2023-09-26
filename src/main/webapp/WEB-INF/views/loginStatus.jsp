<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login Status</title>
  <meta charset="utf-8">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<div id="loginStatus"></div>

<script>
  $(document).ready(function () {
    // '/check' 엔드포인트에 GET 요청을 보냅니다.
    $.get("/check", function (data) {
      // 반환된 결과를 기반으로 로그인 상태를 업데이트합니다.
      if (data === "true") {
        $("#loginStatus").text("로그인 상태: 로그인 중");
      } else {
        $("#loginStatus").text("로그인 상태: 로그인되어 있지 않음");
      }
    });
  });
</script>
</body>
</html>