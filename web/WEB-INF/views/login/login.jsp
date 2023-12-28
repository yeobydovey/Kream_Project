<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <style>

        *{
            margin: 0;
            padding: 0;
        }

        .header{
            margin:0px 350px;

        }

        .footer{
            margin:50px 350px;

        }

        .login_area{
            margin: 50px 10px;
        }
        .login_box{

        }

        .login_title{
            text-align: center;
            font-size: 30px;
        }

        .form_box{
            width: 100%;
            max-width: 500px; /* Set a maximum width for the form box */
            margin: 0 auto;
            background: white;
            padding: 0 5%;
            border-radius: 10px;
        }

        .login_table{
            width:100%;
        }

        .login_p{
            text-align: center;
            font-size: 15px;
        }

        input{
            border: none;
            width: 100%;
            height: 30px;
            font-size: 30px;

        }

        input::placeholder {
            color: #E2E2E2;
            font-family:inherit;
        }

        th{
            text-align: left;
        }

        hr{
            width: 100%;
            opacity: 20%;
            max-width: 1000px;
            margin: 0 auto;
        }
        table{
            border-spacing: 15px;
        }
        .login_button{
            font-size: 20px;
            font-weight: bold;
            border-radius: 20px;
            height: 50px;
            color: white;
        }

        .look_box{
            display: flex;
            justify-content: center;
            align-items: center;


        }

        .look_list{
            text-align: center;
        }

        @media (max-width: 768px) {
            /* Adjust styles for smaller screens */
            .form_box {
                padding: 0 3%;
            }

            input, th, hr {
                font-size: 14px;
            }

            .login_button {
                font-size: 16px;
            }
        }


    </style>
</head>
<body>
    <div class="header">
        <header><jsp:include page="../header.jsp"/></header>
    </div> <%--header--%>

    <script>
        let message = "${message}";
        if(message == "회원가입 성공"){
            alert("회원가입이 완료되었습니다.");
        }

    </script>

    <div class="login_area"> <%--1--%>
        <div class="login_box">
            <div class="login_titleBox">
                <h2 class="login_title">KREAM</h2>
                <h3 class="login_p">KICK RULE EVERYTHING AROUND ME</h3>
            </div>

            <div class="form_box">
                <form>
                    <table class="login_table">
                        <tr>
                            <th>아이디</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="uid" value="" placeholder="예) KreamPeople">
                                <hr/>
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="password" name="pw" autocomplete="off">
                                <hr/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" class="login_button"  id="loginBtn" value="로그인">
                            </td>
                        </tr>
                    </table>
                </form>
                <ul class="look_box">
                    <li class="look_list"><a href="<c:url value='/register/registerForm'/>">회원가입</a></li>
                    <li class="look_list">아이디 찾기</li>
                    <li class="look_list">비밀번호 찾기</li>
                </ul>

            </div>

        </div> <%--login_box--%>
    </div> <%--login_area--%>
    <hr/>
    <div class="footer">
        <footer><jsp:include page="../footer.jsp"/></footer>
    </div> <%--footer--%>
</body>
</html>
