<%@include file="includes/header.jsp"%>
<title>Login Employee</title>
</head>
<body>
<%@include file="includes/navbar.jsp"%>


<%
    if (session.getAttribute("empl_email") == null) {
        out.println("");
    } else {
        response.sendRedirect("carRepairs.jsp");
        return;
    }
%>
<div class="container">
<h1>Login Employee</h1>
<div class="row">
    <div class="col-lg-6">
        <form action="/loginEmpl" method="post">
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
