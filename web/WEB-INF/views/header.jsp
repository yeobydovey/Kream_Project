<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<c:set var="loginId" value="${pageContext.request.session.getAttribute('user_id') == null ? '' : pageContext.request.session.getAttribute('user_id')}"/>
<c:set var="loginOutLink" value="${loginId=='' ? '/register/login' : '/register/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? '로그인' : loginId}"/>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Jua&family=
    Nanum+Gothic+Coding&family=Noto+Sans+KR:wght@100..900&family=Rubik+Mono+One&display=
    swap" rel="stylesheet">


    <title>Title</title>
<style>
    *{
        margin: 0;
        padding: 0;
    }

    .header1{
        padding: 10px 40px;
    }
    .header2{
        display: flex;
        padding: 20px 40px;

    }

    .header3{
        padding: 10px 40px;
    }

    .mid_link{
        text-align: right;
    }

    .top_link{

        padding: 0;
        text-align: right;
    }

    li{
        list-style: none;
        display: inline;

    }


    .top_link_item, .mid_link_item, .bottom_link_item{

        list-style: none;
        display: inline;
        margin: 5px;
    }

    .top_link_item{
        font-family: "Noto Sans KR", sans-serif;
        font-weight: 500;
        font-style: normal;
        opacity: 0.8;
        font-size: 13px;
    }

    .mid_link_item{
        font-family: "Noto Sans KR", sans-serif;
        font-weight: 500;
        font-style: normal;
    }

    .bottom_link_item{
        font-family: "Noto Sans KR", sans-serif;
        font-weight: 400;
        font-style: normal;
    }




    .header_title{
        width:50%;
        font-family: "Rubik Mono One", monospace;
        font-weight: 300;
        font-style: italic;
    }

    .ul_box{
        width:50%;
    }

    a{
        text-decoration: none;
        color: black;
    }

    h1{


    }


</style>
</head>
<body>

    <div>
        <div> <%--1--%>
            <div class="header1">
                <ul class="top_link">
                    <li class="top_link_item"><a href="#">고객센터</a></li>
                    <li class="top_link_item"><a href="#">마이페이지</a></li>
                    <li class="top_link_item"><a href="#">관심상품</a></li>
                    <li class="top_link_item"><a href="#">알림</a></li>
                    <li class="top_link_item"><a href="<c:url value='${loginOutLink}'/>">${loginOut}</a></li>
                </ul>
            </div>
        </div> <%--1--%>
        <div> <%--2--%>
            <div class="header2">
                <h1 class="header_title"><a href="<c:url value='/'/>">KREAM</a></h1>
                <div class="ul_box">
                    <ul class="mid_link">
                        <li class="mid_link_item"><a href="<c:url value='/'/>">HOME</a></li>
                        <li class="mid_link_item"><a href="#">STYLE</a></li>
                        <li class="mid_link_item"><a href="<c:url value='/shop/shop'/>">SHOP</a></li>
                    </ul>
                </div>
            </div>
        </div> <%--2--%>
        <div> <%--3--%>
            <div class="header3">
                <ul class="bottom_link">
                    <li class="bottom_link_item">추천</li>
                    <li class="bottom_link_item">랭킹</li>
                    <li class="bottom_link_item">럭셔리</li>
                    <li class="bottom_link_item">남성</li>
                    <li class="bottom_link_item">여성</li>
                    <li class="bottom_link_item">발견</li>
                </ul>
            </div>
        </div> <%--3--%>
    </div>
</body>
</html>
