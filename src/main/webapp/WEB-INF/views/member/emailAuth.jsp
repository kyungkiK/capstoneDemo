<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <title>이메일 인증</title>

    <script>

    window.onload = function () {

        document.checkingForm.addEventListener("keydown", evt => {
            if (evt.code === "Enter")
                evt.preventDefault();
        });

        let authNumber = "";

        document.querySelector("#mailChecking").addEventListener("click", function () {

            let mailName = document.querySelector("#email").value;
            let splitMailName = mailName.split("@");

            if (splitMailName[1] != "hs.ac.kr") {
                alert("한신대학교 메일 양식이 아닙니다.");
            } else {
                alert("인증메일을 "+mailName+"으로 전송하였습니다.");

                document.querySelector("#authNumber").style.display = "block";
                document.querySelector("#authNumberChecking").style.display = "block";

                $.ajax({

                    url : "/mail-auth",
                    dataType : "text",
                    method : "POST",
                    data : {
                        mail : mailName
                    },
                    success : function (data) {
                        authNumber = data;
                    },
                    error : function () {
                        alert("authNumber 획득 실패");
                    }
                });
            }

        });

        document.querySelector("#authNumberChecking").addEventListener("click", function () {
            let myAuthNumber = document.querySelector("#authNumber").value;
            let systemAuthNumber = authNumber;

            if (systemAuthNumber !== myAuthNumber) {
                alert("인증번호가 일치하지 않습니다.");
            } else {
                alert("학교 계정이 인증완료 되었습니다.");
                $("#joinBtn").removeAttr("disabled");
            }
        });

    };

    </script>
</head>

<body>

<form action="/auth" method="post" name="checkingForm">

    name : <input type="text" name="name" id="name" /> <br>
    Email : <input type="email" name="email" id="email" /> <button type="button" id="mailChecking">인증 요청</button> <br>
    <input type="text" name="authNumber" id="authNumber" style="display: none" /> <button type="button" id="authNumberChecking" style="display: none">인증번호 확인</button> <br> <br>

    <input id="joinBtn" disabled type="submit" value="가입하기"/>

</form>

</body>
</html>
