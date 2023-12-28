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

    // 휴대폰 번호 - 붙이기
    const autoHyphen = (target) => {
        target.value = target.value
            .replace(/[^0-9]/, '')
            .replace(/^(\d{3})(\d{4})(\d{4})$/, `$1-$2-$3`);
        /*console.log(target.value);*/
    }


/*    const updateFormattedPhoneNumber = () => {
        const phone2Input = document.getElementById('phone2');
        const hiddenPhoneInput = document.getElementById('phone');

        autoHyphen(phone2Input);

        hiddenPhoneInput.value = phone2Input.value.replace(/[^0-9]/g, '');
        document.getElementById('phone').value = hiddenPhoneInput.value;
        console.log(document.getElementById('phone').value);

    }*/



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
                <form class="signUp" name="signUp" id="signUp" action="<c:url value='/register/signUp'/>" method="post" onsubmit="return signUpSubmit();" >
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
                            <th>이메일*</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="email_box">
                                    <div>
                                        <input type="hidden" class="user_email" name="user_email" id="user_email">
                                        <input type="text" class="email" name="email" id="email">
                                    </div>
                                    <span>@</span>
                                    <div class="write_box">
                                        <input type="text" class="direct_write" name="direct_write" id="direct_write">
                                        <select class="select_write" id="select_write">
                                            <option value="" disabled="disabled" selected>선택</option>
                                            <option value="directWrite">직접입력</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="gmail.com">gmail.com</option>
                                            <option value="kakao.com">kakao.com</option>
                                            <option value="daum.net">daum.net</option>
                                            <option value="nate.com">nate.com</option>
                                        </select>
                                    </div>
                                </div>
                                <hr/>
                                <div id="msg_email">
                                    <c:if test="${not empty param.msg}">
                                        <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
                                    </c:if>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="email_accept_box">
                                    <input type="button" id="acceptEmail" class="acceptEmail" value="이메일 인증받기"/>
                                </div>
                            </td>
                        </tr>
                        <tr id="acceptCodeTr">
                            <th>인증코드*</th>
                        </tr>
                        <tr>
                            <td>
                                <div id="emailCodeWrap">
                                    <input type="text" id="emailCode" maxlength="5" autocomplete="off" />
                                    <hr/>
                                    <input type="button" id="emailAcceptBtn" class="emailAcceptBtn" value="인증완료"/>
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
                                        <input type="radio" name="user_gender" class="user_gender" value="남성" /> 남성
                                    </label>
                                    <label>
                                        <input type="radio" name="user_gender" class="user_gender" value="여성" /> 여성
                                    </label>
                                </div>
                                <hr/>
                            </td>
                        </tr>
                        <tr>
                            <th>휴대폰 번호*</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="phone_box">
                                    <input type="hidden" name="user_phone" id="user_phone" class="user_phone" value="" />
                                    <input type="text" name="phone2" id="phone2" class="phone2" placeholder="예) 01012345678" autocomplete="off" alt="휴대폰 번호"
                                           oninput="autoHyphen(this)" maxlength="12"/>
                                    <hr/>
                                </div>
                                <div id="msg_phone">
                                    <c:if test="${not empty param.msg}">
                                        <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
                                    </c:if>
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
                                    <input type="text" name="user_addr" class="user_addr"
                                           id="user_addr" placeholder="주소" alt="주소" autocomplete="off" readonly />
                                    <hr/>
                                    <input type="text" name="user_addrDetail" class="user_addrDetail"
                                           id="user_addrDetail" placeholder="상세주소" alt="상세주소" autocomplete="off" />
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
                                    <input type="text" name="user_postCode" id="user_postCode" class="user_postCode" placeholder="우편번호" alt="우편번호"  autocomplete="off" readonly/>
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

                    let fullAddr = "";	// 최종 주소
                    let extraAddr = ""; // 조합형 주소

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
                    $("#user_postCode").val(data.zonecode);
                    $("#user_addr").val(fullAddr);
                    $("#user_addrDetail").focus();
                    console.log(fullAddr);
                    console.log(extraAddr);

                }
            }).open();
        }



        ////////////////////////////////////////////////////////////////////////////////


        let boolUser_id = false;
        // 한글 영문 숫자 포함 8자 이내
        let regexId = /^[가-힣-0-9a-zA-Z]{5,12}$/;

        //(메세지를 보여줄 요소,검사할 값,비교할 정규식,출력할 메세지,비동기 통신 함수)
        function checkRegex(tagId,tempVal,regexId,message,checkAjax) {
            const isVaild = regexId.test(tempVal);
            if(isVaild == true) {
                checkAjax(tempVal);

            }else{
                setMessage(tagId,message, false);
                return false;

            }

        }


        // 정규식 msg
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
            boolUser_id = checkRegex("msg_id",tempVal, regexId, message, checkUser_idAjax);
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
                        boolUser_id ? "사용 가능한 아이디입니다." : "이미 존재하는 아이디입니다.",
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
                    message ="비밀번호가 일치하지 않습니다.";
                }

            }else{
                boolPassCheck = false;
                message = "비밀번호를 먼저 확인해 주세요.";
            }
            setMessage("msg_rePass",message, boolPassCheck);
        });



        // 닉네임 입력 태그에 값이 작성 될 때

        let boolUser_nick = false;

        $(".user_nick").on("input", function () {
            let tempVal = $(this).val();
            let message = "5~12글자 이내 한글과 영문, 숫자로 작성해 주세요.";
            boolUser_nick = checkRegex("msg_nick", tempVal, regexId, message, checkUser_nickAjax);
        });


        function checkUser_nickAjax(tempVal) {
            $.ajax({
                type: "POST",
                url: "<c:url value='/register/nickCheck'/>",
                data: {
                    user_nick: tempVal

                },
                dataType: "json",
                success: function (result) {
                    boolUser_nick = result;
                    console.log("ajax 결과"+result);

                    setMessage(
                        "msg_nick",
                        boolUser_nick ? "사용 가능한 닉네임입니다." : "이미 존재하는 닉네임입니다.",
                        boolUser_nick
                    );
                }
            });
        }


        // 휴대폰 번호 -표시 없이 숫자만
        let regexMobile = /^[0-9]{3}-?[0-9]{4}-?[0-9]{4}$/;

        let boolUser_phone = false;

        // 하이픈 제거
        $("#phone2").on("input",function(){
            let phoneNum =  $(this).val();
            let tempVal = phoneNum.replace(/-/g, "");
            let message = "형식에 맞지 않는 휴대폰 번호입니다.";

            // hidden 값 user_phone에 하이픈 없이 넣기
           document.getElementById("user_phone").value = tempVal;
            console.log("OriginalPhone " + document.getElementById("user_phone").value);

            boolUser_phone = checkRegex("msg_phone",tempVal,regexMobile,message,checkUser_phoneAjax);


        });

        // 휴대폰 번호 중복체크
        function checkUser_phoneAjax(tempVal) {
            $.ajax({
                type: "POST",
                url: "<c:url value='/register/phoneCheck'/>",
                data: {
                    user_phone: tempVal

                },
                dataType: "json",
                success: function (result) {
                    boolUser_phone = result;
                    console.log("ajax 결과"+result);

                    setMessage(
                        "msg_phone",
                        boolUser_phone ? "사용 가능한 번호입니다." : "이미 존재하는 번호입니다.",
                        boolUser_phone
                    );
                }
            });
        }

        // 이메일 확인 정규식
        let regexEmail =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

        let boolUser_email = false;

        // 이메일 직접입력 선택시만 활성화
        document.getElementById('select_write').addEventListener('change', function(){
           let directWriteInput = document.getElementById('direct_write');

           directWriteInput.style.display = (this.value === 'directWrite') ? 'block' : 'none';

            if (this.value === 'directWrite') {
                directWriteInput.focus();
            } else{
                $(".direct_write").val($(".select_write").val());
            }

            let tempVal = $(".email").val() + "@" + $(".direct_write").val();
            console.log("email tempVal " +tempVal);

            let message = "올바른 이메일 형식이 아닙니다.";

            // user_email에 값 넣기
            /*document.getElementById("user_email").value = tempVal;
            console.log("user_email " +$(".user_email").val());*/

            boolUser_email = checkRegex("msg_email",tempVal,regexEmail,message,checkUser_emailAjax);

            // 이메일 중복체크
            function checkUser_emailAjax(){
                $.ajax({
                    type: "POST",
                    url: "<c:url value='/register/emailCheck'/>",
                    data: {
                        user_email: tempVal

                    },
                    dataType: "json",
                    success: function (result) {
                        boolUser_email = result;
                        console.log("ajax 결과"+result);

                        setMessage(
                            "msg_email",
                            boolUser_email ? "사용 가능한 이메일입니다." : "이미 존재하는 이메일입니다.",
                            boolUser_email
                        );
                    }
                });
            }
        });


        // 인증 메일에 발송된 코드 저장
        let emailCode = "";

        // 인증 메일 발송
        $("#acceptEmail").click(function(){
            let tempVal = $(".email").val() + "@" + $(".direct_write").val();
            $.ajax({
                type : "GET",
                dataType : "text",
                url: "<c:url value='/register/acceptEmail'/>",
                data : {
                    user_email : tempVal

                },
                success : function(code){
                    console.log(code);
                    if(code){
                        emailCode = code;
                        alert("메일 발송 완료!\n메일을 확인해주세요.");
                        $("#emailCodeWrap").show();
                        $("#acceptCodeTr").show();

                    }else{
                        alert("메일 전송 실패 관리자에게 문의해 주세요.");
                    }
                }
            });
        });


        // 인증 코드 확인 완료 여부
        let boolEmailCode = false;

        // 인증 코드 검사
        $("#emailAcceptBtn").click(function(){
            let userCode = $("#emailCode").val();
            if(emailCode == userCode){
                boolEmailCode = true;
                alert("이메일 인증이 완료되었습니다.");
                $("#emailCodeWrap").hide();
                $("#acceptEmail").hide();
                $("#msg_email").hide();
                $("#acceptCodeTr").hide();
            }else{
                boolEmailCode = false;
                alert("인증 코드를 다시 확인해 주세요.");
            }
        });


        function signUpSubmit(){


            // 주소 입력 태그 공백 확인
            let addObj = null;
            let boolUser_addr = false;
            $(".user_addr").each(function(){
                let val = $(this).val();

                boolUser_addr = (val !== '') ? true : false;
                if(!boolUser_addr){
                    addrObj = $(this);
                    // 반복문 탈출
                    return false;
                }
                let hint = $(this).attr("placeholder");
            });

            if(!boolUser_id){
                alert("아이디를 확인해 주세요.");
                $(".user_id").focus();
                return false;
            }else if(!boolEmailCode){
                alert("이메일 인증을 완료해 주세요.");
                $(".emailCode").focus();
                return false;
            }else if(!boolUser_nick){
                alert("닉네임을 확인해 주세요.");
                $(".user_nick").focus();
                return false;
            }else if(!boolPassword){
                alert("비밀번호를 확인해주세요.");
                $(".user_pw").focus();
                return false;
            }else if(!boolPassCheck){
                alert("비밀번호 일치 여부를 확인해주세요.");
                $(".re_pw").focus();
                return false;
            }else if(!$(".user_gender").is(":checked")){
                alert("성별을 체크해주세요.");
                $(".user_gender").focus();
                return false;
            }else if(!boolUser_phone){
                alert("전화번호를 확인해 주세요.");
                $(".user_phone").focus();
                return false;
            } else if(!boolUser_addr){
                alert($(addrObj).attr("alt")+"을 확인해 주세요.");
                $(addrObj).focus();
                return false;
            }else{
                let tempVal = $(".email").val() + "@" + $(".direct_write").val();
                $(".user_email").val(tempVal);
                alert("회원가입 요청");
                return true;
            }
        }

    </script>




</body>
</html>
