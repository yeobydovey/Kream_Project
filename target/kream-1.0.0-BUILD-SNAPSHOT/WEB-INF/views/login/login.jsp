<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>

<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" type="text/css"/>
    <link href="<c:url value='/resources/css/register/login.css?after'/>" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <style>


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
                <form action="<c:url value='/register/login'/>" method="post" onsubmit="return formCheck(this);">
                    <table class="login_table">
                        <tr>
                            <th>아이디</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="user_id" class="user_id" value="" placeholder="예) KreamPeople">
                                <hr/>
                                <div id="msg_id">
                                    <c:if test="${not empty param.msg}">
                                        <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
                                    </c:if>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="password" name="user_pw" class="user_pw" autocomplete="off">
                                <hr/>
                                <div id="msg_pw">
                                    <c:if test="${not empty param.msg}">
                                        <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
                                    </c:if>
                                </div>
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
    <script>

        // 정규식 msg
        function setMessage(tagId, msg, isCheck){
            if(isCheck == false){
                document.getElementById(tagId).innerHTML = `<span style="color : red; font-size: 13px;"> ${'${msg}'} </span>  `;

            }

        }

        let boolUser_id = false;
        let boolUser_pw = false;




        // user_id 태그에 값이 작성 될 때
        $(".user_id").on("input", function (){
            let message = " ";
            setMessage("msg_id", message, boolUser_id);
        });


        // user_pw 태그에 값이 작성 될 때
        $(".user_pw").on("input", function (){
            let message = " ";
            setMessage("msg_pw", message, boolUser_id);
        });




        // 로그인 버튼 클릭 후에 공백 체크
        function formCheck(frm) {
            let message = '';
            if(frm.elements['user_id'].value.length === 0){
                message = "아이디를 확인해주세요.";
                setMessage("msg_id", message, boolUser_id);
                return false;
            }else if(frm.elements['user_pw'].value.length === 0){
                let message_id = "";
                setMessage("msg_id", message_id, boolUser_id);
                message = "비밀번호를 확인해주세요.";
                setMessage("msg_pw", message, boolUser_pw);
                return false;
            }else{
                return true;
            }
        }
    </script>
</body>
</html>
