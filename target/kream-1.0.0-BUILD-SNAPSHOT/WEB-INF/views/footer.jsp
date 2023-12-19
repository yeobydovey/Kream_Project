<%--
  Created by IntelliJ IDEA.
  User: flyin
  Date: 2023-12-06
  Time: 오후 4:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <style>
    *{
      margin: 0;
      padding: 0;
    }

    .footer_box{
      padding: 20px 40px;
    }

    ul{
    }

    .menu_li{
      display: block;
      padding: 5px;
    }

    .menuBox1{
      width: 25%; float: left
    }

    .menuBox2{
      width: 25%; float: left
    }

    .menuBox3{
      width: 25%; float: left
    }

  </style>
</head>
<body>
  <div class="footer_box"> <%--1--%>
    <div> <%--2--%>
      <div class="menuBox1">
        <strong>이용안내</strong>
        <ul>
          <li class="menu_li">검수기준</li>
          <li class="menu_li">이용정책</li>
          <li class="menu_li">페널티정책</li>
          <li class="menu_li">커뮤니티 가이드라인</li>
        </ul>
      </div>
      <div class="menuBox2">
        <strong>고객지원</strong>
        <ul>
          <li class="menu_li">공지사항</li>
          <li class="menu_li">서비스 소개</li>
          <li class="menu_li">스토어 안내</li>
          <li class="menu_li">판매자 방문접수</li>
        </ul>
      </div>
      <div class="menuBox3">
        <strong>고객지원</strong>
        <ul>
          <li class="menu_li">고객센터 1588-7813</li>
          <li class="menu_li">운영시간 평일 10:00 - 18:00 (토∙일, 공휴일 휴무)</li>
          <li class="menu_li">점심시간 평일 13:00 - 14:00</li>
          <li class="menu_li">1:1 문의하기는 앱에서만 가능합니다.</li>
        </ul>
      </div>
    </div> <%--2--%>
  </div> <%--1--%>
</body>
</html>
