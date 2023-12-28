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

    .header2{
        display: flex;
        padding: 20px 40px;

    }

    .header3{
        padding: 0px 40px;
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
        margin: 5px;

    }

    .header_title{
        width:50%;
    }

    .right{
        width:50%;
    }

    a{
        text-decoration: none;
        color: black;
    }


</style>
</head>
<body>

    <div>
        <div> <%--1--%>
            <div class="header1">
                <ul class="top_link">
                    <li><a href="#">고객센터</a></li>
                    <li><a href="#">마이페이지</a></li>
                    <li><a href="#">관심상품</a></li>
                    <li><a href="#">알림</a></li>
                    <li><a href="<c:url value='/login/login'/>">로그인</a></li>
                </ul>
            </div>
        </div> <%--1--%>
        <div> <%--2--%>
            <div class="header2">
                <h1 class="header_title"><a href="<c:url value='/'/>">KREAM</a></h1>
                <div class="right">
                    <ul class="mid_link">
                        <li><a href="<c:url value='/'/>">HOME</a></li>
                        <li><a href="#">STYLE</a></li>
                        <li><a href="#">SHOP</a></li>
                    </ul>
                </div>
            </div>
        </div> <%--2--%>
        <div> <%--3--%>
            <div class="header3">
                <ul>
                    <li>추천</li>
                    <li>랭킹</li>
                    <li>럭셔리</li>
                    <li>남성</li>
                    <li>여성</li>
                    <li>발견</li>
                </ul>
            </div>
        </div> <%--3--%>
    </div>
</body>
</html>
