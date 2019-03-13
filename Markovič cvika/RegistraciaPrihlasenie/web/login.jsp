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
    <title>Prihlasenie</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <div class="container">
        <form action="/loginUser" method="post" id="formLogin">

            <div class="form-group">
                <label for="email">E-mail</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="Enter valid email address">

            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">

            </div>

            <button type="submit" class="btn btn-primary">Odoslať</button>
        </form>
    </div>
</body>
</html>
