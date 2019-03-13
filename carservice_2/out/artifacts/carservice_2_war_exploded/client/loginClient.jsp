<%@ page import="com.carservice.controller.dao.ClientImplement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.carservice.model.Client" %>

<%@include file="../includes/header.jsp" %>
<title>Login client</title>
<%@include file="includes/navbar.jsp" %>
<%
    if (session.getAttribute("client_email") != null) {
        response.sendRedirect("myRepairs.jsp");
        return;
    }
%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1>Ahoj, potrebujes pomoct s opravou auta?</h1>
            <h2>Prihlas sa do nasho systemu</h2>
            <h3>Ak nemas ucet, musis sa <a href="/client/regClient.jsp"> registrovat</a></h3>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <form action="/loginClient" method="post">
                    <div class="form-group">
                    <input type="text" class="form-control" name="client_email">
                    </div>
                    <div class="form-group">
                    <input type="password" class="form-control" name="client_pass">
                    </div>
                    <input type="submit" class="btn btn-success">
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
