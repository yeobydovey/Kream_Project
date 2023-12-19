<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" type="text/css"/>
    <link href="<c:url value='/resources/css/register/registerForm.css?after'/>" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <style>
    </style>
</head>
<script>
    const autoHyphen = (target) => {
        target.value = target.value
            .replace(/[^0-9]/, '')
            .replace(/^(\d{3})(\d{4})(\d{4})$/, `$1-$2-$3`);
        /*console.log(target.value);*/
    }

    const updateFormattedPhoneNumber = () => {
        const phone2Input = document.getElementById('phone2');
        const hiddenPhoneInput = document.getElementById('phone');

        autoHyphen(phone2Input);

        hiddenPhoneInput.value = phone2Input.value.replace(/[^0-9]/g, '');

        console.log(hiddenPhoneInput.value)
    }



</script>
<body>
    <div class="header">
        <header><jsp:include page="../header.jsp"/></header>
    </div> <%--header--%>

    <div class="register_area"> <%--1--%>
        <div class="register_box">
            <div class="register_joinBox">
                <h2 class="register_title">회원가입</h2>
            </div>

            <div class="form_box">
                <form>
                    <table class="register_table">
                        <tr>
                            <th>아이디*</th>
                        </tr>
                        <tr>
                            <td>
                                <div  class="id_box">
                                    <input type="text" name="user_id" class="user_id" value="" placeholder="예) KreamPeople">
                                    <hr/>
                                </div>
                                <div id="msg_id">
                                    <c:if test="${not empty param.msg}">
                                        <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
                                    </c:if>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호*</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="pass_box">
                                    <input type="password" class="user_pw" name="user_pw" autocomplete="off" alt="비밀번호">
                                    <hr/>
                                </div>
                                <div id="msg_pass">
                                    <c:if test="${not empty param.msg}">
                                        <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
                                    </c:if>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호 확인*</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="re_pass_box">
                                    <input type="password" class="re_pw" name="re_pw" autocomplete="off" alt="비밀번호 확인">
                                    <hr/>
                                </div>
                                <div id="msg_rePass">
                                    <c:if test="${not empty param.msg}">
                                        <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
                                    </c:if>
                                </div>
                            </td>
                        </tr>


                        <tr>
                            <th>닉네임*</th>
                        </tr>
                        <tr>
                            <td>
                                <div  class="nick_box">
                                    <input type="text" name="user_nick" class="user_nick" value="" placeholder="예) nickName">
                                    <hr/>
                                </div>
                                <div id="msg_nick">
                                    <c:if test="${not empty param.msg}">
                                        <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
                                    </c:if>
                                </div>
                            </td>
                        </tr>








                        <tr>
                            <th>성별*</th>
                        </tr>
                        <tr>
                            <td>
                                <div  class="gender_box">
                                    <label>
                                        <input type="radio" name="gender" class="gender" value="남성" /> 남성
                                    </label>
                                    <label>
                                        <input type="radio" name="gender" class="gender" value="여성" /> 여성
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>휴대폰 번호*</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="phone_box">
                                    <input type="hidden" name="phone" id="phone" class="phone" value="" />
                                    <input type="text" name="phone2" id="phone2" class="phone2" placeholder="예) 01012345678" autocomplete="off" alt="휴대폰 번호"
                                           oninput="updateFormattedPhoneNumber()" maxlength="11"/>
                                    <hr/>
                                    <div class="result"></div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>주소*</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="addr_search_box">
                                    <input type="button" id="addrButton" class="addrButton" value="주소찾기" onclick="daumPostCode();"/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="addr_box">
                                    <input type="text" name="addr" class="addr"
                                           id="addr" placeholder="주소" alt="주소" autocomplete="off" readonly />
                                    <hr/>
                                    <input type="text" name="addr_detail" class="addr"
                                           id="addr_detail" placeholder="상세주소" alt="상세주소" autocomplete="off" />
                                    <hr/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>우편번호*</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="addr_box">
                                    <input type="text" name="post" id="post" class="addrCode" placeholder="우편번호" alt="우편번호"  autocomplete="off" readonly/>
                                    <hr/>
                                </div>
                            </td>
                        </tr>



                        <tr>
                            <td>
                                <input type="submit" class="register_button"  id="register_Btn" value="회원가입">
                            </td>
                        </tr>
                    </table>
                </form>

            </div>

        </div> <%--login_box--%>
    </div> <%--login_area--%>
    <hr/>
    <div class="footer">
        <footer><jsp:include page="../footer.jsp"/></footer>
    </div> <%--footer--%>





    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        // 다음 주소검색 api
        function daumPostCode(){
            new daum.Postcode({
                oncomplete: function(data) {

                    var fullAddr = "";	// 최종 주소
                    var extraAddr = ""; // 조합형 주소

                    if(data.userSelectedType == "R"){
                        fullAddr = data.roadAddress;
                    }else{
                        fullAddr = data.jibunAddress;
                    }

                    if(data.userSelectedType == "R"){
                        // 법정 동명
                        if(data.bname !== ''){
                            extraAddr += data.bname;
                        }

                        // 건물명
                        if(data.buildingName !== ''){
                            extraAddr += extraAddr !== '' ? ', '+data.buildingName : data.buildingName;
                        }

                        fullAddr += (extraAddr !== '') ? '('+extraAddr+')' : '';
                    }
                    // 입력필드에 값 추가
                    $("#post").val(data.zonecode);
                    $("#addr").val(fullAddr);
                    $("#addr_detail").focus();
                }
            }).open();
        }

    </script>
    <script>
        let boolUser_nick = false;

        let boolUser_id = false;
        // 한글 영문 숫자 포함 8자 이내
        let regexId = /^[가-힣-0-9a-zA-Z]{5,12}$/;

        //(메세지를 보여줄 요소,검사할 값,비교할 정규식,출력할 메세지,비동기 통신 함수)
        function checkRegex(tempVal,regexId,message,checkUser_idAjax) {
            const isVaild = regexId.test(tempVal);
            if(isVaild == true) {
                checkUser_idAjax(tempVal);

            }else{
                setMessage("msg_id",message, false);
                return false;

            }

        }



        function setMessage(tagId,msg, isCheck){
            if(isCheck == false){
                document.getElementById(tagId).innerHTML = `<span style="color : red; font-size: 13px;"> ${'${msg}'} </span>  `;


            }else{
               document.getElementById(tagId).innerHTML = `<span style="color : blue; font-size: 13px;"> ${'${msg}'} </span>  `;

            }

        }

            // 아이디 입력 태그에 값이 작성 될 때
            $(".user_id").on("input", function () {
                let tempVal = $(this).val();
                let message = "5~12글자 이내 한글과 영문, 숫자로 작성해 주세요.";
                boolUser_id = checkRegex(tempVal, regexId, message, checkUser_idAjax);
            });


            function checkUser_idAjax(tempVal) {
                $.ajax({
                    type: "POST",
                    url: "<c:url value='/register/uidCheck'/>",
                    data: {
                        user_id: tempVal

                    },
                    dataType: "json",
                    success: function (result) {
                        boolUser_id = result;
                        console.log("ajax 결과"+result);

                        setMessage(
                            "msg_id",
                            boolUser_id ? "사용 가능한 닉네임 입니다." : "이미 존재하는 닉네임입니다.",
                            boolUser_id
                        );
                    }
                });
            }


        // 비밀번호 확인
        let boolPassword = false;
        // 특수문자 포함 비밀번호
        let regexPass = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;

        //(메세지를 보여줄 요소,검사할 값,비교할 정규식,출력할 메세지,비동기 통신 함수)
        function checkPass(tempVal,regexPass,message) {
            const isVaild = regexPass.test(tempVal);
            if(isVaild == false){
                setMessage("msg_pass",message, false);
                return false;
            }else{
                setMessage("msg_pass", "사용 가능합니다.", true);
                return true;

            }

        }

        // 비밀번호 형식 확인
        $(".user_pw").on("input",function(){
            let tempVal = $(this).val();
            let message = "특수문자 포함 영문/숫자 조합하여 8~16자 이내 작성해 주세요.";
            boolPassword = checkPass(tempVal,regexPass,message);

        });

        // 비밀번호 동일 값 체크 여부
        let boolPassCheck = false;

        // 비밀번호 확인
        $(".re_pw").on("input",function(){
            let tempVal = $(this).val();
            let message = "";
            let originalVal = $(".user_pw").val();
            if(boolPassword){

                if(tempVal == originalVal){
                    boolPassCheck = true;
                    message ="비밀번호가 일치합니다.";
                }else{
                    boolPassCheck = false;
                    message ="비밀번호가 일치 하지않습니다.";
                }

            }else{
                boolPassCheck = false;
                message = "비밀번호를 먼저 확인해 주세요.";
            }
            setMessage("msg_rePass",message, boolPassCheck);
        });





    </script>













</body>
</html>
