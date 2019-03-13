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
        <div class="col-lg-7">
            <h1>Registration of client</h1>
            <%--<form action="/registrationClient" method="post">--%>
                <form id="regFormClient">
                <div class="form-group">
                    <label for="client_first_name">client_first_name</label>
                    <input type="text" class="form-control" id="client_first_name" name="client_first_name">
                </div>
                <div class="form-group">
                    <label>client_second_name</label>
                    <input type="text" class="form-control" id="client_second_name" name="client_second_name">
                </div>
                <div class="form-group">
                    <label>client_email</label>
                    <input type="email" class="form-control" id="client_email" name="client_email">
                </div>
                <div class="form-group">
                    <label>client_pass</label>
                    <input type="password" class="form-control" id="client_pass" name="client_pass">
                </div>
                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" class="form-control" id="client_pass_confirm" name="client_pass_confirm">
                </div>
                <button id="btnInsertClient" class="btn btn-success" >Registration</button>
                <%--</form>--%>
            </form>
        </div>
        <div class="col-lg-5">
            <div class="result"></div>
        </div>
    </div>
</div>
<script src="/sources/js/jquery.validate.min.js"></script>
<script src="/sources/js/insertFormClientAjaxValid.js"></script>
<script>
   /* $(document).ready(function () {
        $('#btnInsertClient').click(function () {
            $.post(
                "/registrationClient",
                {
                    client_first_name: $('#client_first_name').val(),
                    client_second_name: $('#client_second_name').val(),
                    client_pass: $('#client_pass').val(),
                    client_email: $('#client_email').val()
                },
                function (result) {
                    $('.result').html(result);
                    setTimeout(function () {
                        location.reload();
                    }, 3000);
                }
            );

        });
    });*/
</script>
</body>
</html>