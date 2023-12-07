<%--
  Created by IntelliJ IDEA.
  User: flyin
  Date: 2023-12-02
  Time: 오후 5:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>

    <style>

        *{
            margin: 0 auto;
        }

        .content{
            background-color: bisque;
        }

        .header{
            margin:0px 100px;
            background-color: darksalmon;
        }

        .footer{
            margin:50px 140px;
            background-color: antiquewhite;
        }

        .h1{
            border: 1px solid ;
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="header">
        <header><jsp:include page="header.jsp"/></header>
    </div> <%--header--%>


    <div class="content">
        <h1 class="h1">dddd</h1>
        <section><jsp:include page="thumbnail/justDropped.jsp"/></section>




    </div> <%--content--%>

    <div class="footer">
        <footer><jsp:include page="footer.jsp"/></footer>
    </div> <%--footer--%>
</body>
</html>
