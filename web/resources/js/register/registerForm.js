




    ///////////////////////////////////////////////////////////////


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
    let regexMobile = /^[0-9]{2,3}-?[0-9]{3,4}-?[0-9]{4}$/;

    // 하이픈 제거
    $("#phone2").on("input",function(){
        let tempVal =  $(this).val();
        let phoneNum = tempVal.replace(/-/g, "");
        console.log("phoneNum " + phoneNum);

    });
