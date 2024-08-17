<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session ="false"%>

<html>
<head>
    <link href="<c:url value='/resources/css/justDropped.css'/>" rel="stylesheet"/>

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

    <%--    <h1>session?</h1>

        <%
            // Get the HttpSession object without creating a new one
            HttpSession session = request.getSession(false);
        %>

        <br/>

        <%
            if (session == null || session.getId() == null) {
        %>
        <%= "Session is null." %>
        <%
        } else {
        %>
        <%= session.getId() %>
        <%
            }
        %>--%>

    <!-- slide -->
    <div class="slidebox">
        <input type="radio" name="slide" id="slide01" checked/>
        <input type="radio" name="slide" id="slide02" />
        <input type="radio" name="slide" id="slide03" />
        <input type="radio" name="slide" id="slide04" />
        <ul class="slidelist">
            <li class="slideitem">
                <div>
                    <label for="slide04" class="left"></label>
                    <label for="slide02" class="right"></label>
                    <a><div class="img1"></div></a>
                </div>
            </li>
            <li class="slideitem">
                <div>
                    <label for="slide01" class="left"></label>
                    <label for="slide03" class="right"></label>
                    <a><div class="img2"></div></a>
                </div>
            </li>
            <li class="slideitem">
                <div>
                    <label for="slide02" class="left"></label>
                    <label for="slide04" class="right"></label>
                    <a><div class="img3"></div></a>
                </div>
            </li>
            <li class="slideitem">
                <div>
                    <label for="slide03" class="left"></label>
                    <label for="slide01" class="right"></label>
                    <a><div class="img4"></div></a>
                </div>
            </li>
        </ul>
    </div>

    <br/>
    <br/>
    <br/>





    <div class="content">
        <section><jsp:include page="thumbnail/justDropped.jsp"/></section>
    </div> <%--content--%>

    <hr/>

    <div class="footer">
        <footer><jsp:include page="footer.jsp"/></footer>
    </div> <%--footer--%>
</body>
</html>
