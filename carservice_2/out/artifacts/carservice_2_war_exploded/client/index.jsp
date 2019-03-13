<%@ page import="com.carservice.controller.dao.ClientImplement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.carservice.model.Client" %>

<%@include file="../includes/header.jsp" %>
<title>Login client</title>
<%@include file="includes/navbar.jsp" %>
<%
    if (session.getAttribute("client_email") == null) {
        response.sendRedirect("loginClient.jsp");
        return;
    }
%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12">toto je index
            <h1>Ahoj, potrebujes pomoct s opravou auta?</h1>
            <h2>Prihlas sa do nasho systemu</h2>
            <h3>Ak nemas ucet, musis sa <a href="/client/regClient.jsp"> registrovat</a></h3>
        </div>
        <div class="row">

        </div>
    </div>
</div>

</body>
</html>
