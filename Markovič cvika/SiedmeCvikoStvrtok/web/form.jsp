<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 05.04.2018
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Input form</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <div class="container">
        <form action="/doSomething" method="post" id="form">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Insert your name">

            </div>

            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" class="form-control" id="age" name="age" placeholder="Insert your age">

            </div>

            <button type="submit" class="btn btn-primary">Odoslať</button>
        </form>
    </div>
</body>
</html>
