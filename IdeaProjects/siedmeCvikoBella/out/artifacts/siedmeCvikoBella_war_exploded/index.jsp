<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 05.04.2018
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>index</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
<br>
  <div class="container">
    <form action="/doSomething" method="post">
      <div class="form-group">
        <label for="meno">Meno</label>
        <input type="text" class="form-control" id="meno" name="meno" placeholder="Zadajte meno">
      </div>
      <div class="form-group">
        <label for="vek">Vek</label>
        <input type="number" class="form-control" id="vek" name="vek" placeholder="Zadajte vek">
      </div>
      <button type="submit" class="btn btn-primary">Odoslať</button>
    </form>
  </div>

  </body>
</html>
