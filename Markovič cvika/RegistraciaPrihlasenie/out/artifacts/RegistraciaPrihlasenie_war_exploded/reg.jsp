<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 02.05.2018
  Time: 8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registracia</title>
    <%@include file="head.jsp"%>
</head>
<body>

    <div class="container">
        <form action="/regUser" method="post" id="formReg">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name">

            </div>

            <div class="form-group">
                <label for="email">E-mail</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="Enter valid email address">

            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">

            </div>

            <div class="form-group">
                <label for="password2">Password validation</label>
                <input type="password" class="form-control" id="password2" name="password2" placeholder="Password again">

            </div>

            <button type="submit" class="btn btn-primary">Odoslať</button>
        </form>
    </div>

</body>
</html>
