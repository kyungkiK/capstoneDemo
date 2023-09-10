
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>회원 탈퇴</title>
</head>
<body>
<h2> 회원 탈퇴 </h2>
<h4> 정말로 탈퇴하시겠습니까? </h4>
<form action="/delete" method="post">

  <input type="hidden" name="id" value="${to.id}" />

  <b> 이름 : </b> ${to.name} <br>
  <b> 이메일 : </b> ${to.email} <br>
  <b> 비밀번호 : </b> <input type="password" name="password" required /> <br>
  <input type="submit" value="삭제하기" />
</form>

</body>
</html>