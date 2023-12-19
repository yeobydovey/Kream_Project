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
            margin: 0;
            padding: 0;
        }


        .header{
            margin:0px 350px;

        }
        .content{
            margin:0px 350px;
        }

        .footer{
            margin:50px 350px;

        }

        .h1{
            border: 1px solid ;
            padding: 20px;
        }

        hr{
            width: 100%;
            opacity: 20%;
            max-width: 1000px;
            margin: 0 auto;
        }

    </style>
</head>
<body>
    <div class="header">
        <header><jsp:include page="header.jsp"/></header>
    </div> <%--header--%>


    <div class="content">
        <section><jsp:include page="thumbnail/justDropped.jsp"/></section>
    </div> <%--content--%>

    <hr/>

    <div class="footer">
        <footer><jsp:include page="footer.jsp"/></footer>
    </div> <%--footer--%>
</body>
</html>
