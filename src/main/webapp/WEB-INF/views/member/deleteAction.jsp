
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  int flag = (int)request.getAttribute("flag");
  int id = (int)request.getAttribute("id");

  out.print("<script>");
  if (flag == 0) {
    out.print("alert('회원탈퇴에 성공하셨습니다.');");
    out.print("location.href = '/';");
  } else {
    out.print("alert('회원탈퇴에 실패하셨습니다.');");
    out.print("location.href = '/mypage';");
  }
  out.print("</script>");

%>