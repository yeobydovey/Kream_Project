<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session ="false"%>

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

    <h1>session?</h1>

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
    %>

    <div class="content">
        <section><jsp:include page="thumbnail/justDropped.jsp"/></section>
    </div> <%--content--%>

    <hr/>

    <div class="footer">
        <footer><jsp:include page="footer.jsp"/></footer>
    </div> <%--footer--%>
</body>
</html>
