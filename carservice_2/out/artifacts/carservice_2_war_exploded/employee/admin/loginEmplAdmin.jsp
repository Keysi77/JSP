<%@include file="../includes/header.jsp"%>
<title>Login Employee - Administrator</title>

</head>
<body>
<%@include file="../includes/navbarAdmin.jsp"%>
<%
    if (session.getAttribute("empl_admin") == null) {
        out.println("");
    } else {
        response.sendRedirect("carRepairsAdmin.jsp");
        return;
    }

%>
<div class="row">
    <div class="col-lg-12">
        <%--<a href="/employee/admin/logOutAdmin.jsp">Odhlas sa:</a> <%out.println(" "+(String)session.getAttribute("empl_admin"));%>--%>
    </div>
</div>
<div class="container">
    <h1>Login Employee as Admin</h1>
    <div class="row">
        <div class="col-lg-6">
            <form action="/loginEmplAdmin" method="post">
                <div class="form-group">
                <input type="text" class="form-control" name="empl_email">
                </div>
                <div class="form-group">
                <input type ="password" class="form-control" name="empl_pass">
                </div>
                <input type="submit"  class="btn btn-success">
            </form>
        </div>
    </div>
</div>


</body>
</html>