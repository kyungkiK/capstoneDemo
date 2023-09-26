<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2023-03-06
  Time: 오후 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>전체 멤버 반환</title>
</head>
<body>
<h2>전체 멤버</h2>

<table border="1">
  <tr>
    <th>ID</th>
    <th>이름</th>
    <th>이메일</th>
  </tr>
  <c:forEach var="to" items="${memberList}">
    <tr>
      <td><a href="/mypage?id=${to.id}"> ${to.id} </a></td>
      <td>${to.name}</td>
      <td>${to.email}</td>
      <td><a href="/delete?id=${to.id}"> 삭제하기 </a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>