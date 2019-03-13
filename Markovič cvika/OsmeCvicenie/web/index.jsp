<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 11.04.2018
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Vlozenie do DB</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
    <div class="container">
      <form action="/insertCar" method="post" id="form">
        <div class="form-group">
          <label for="brand">Brand</label>
          <input type="text" class="form-control" id="brand" name="brand" placeholder="Car brand">

        </div>

        <div class="form-group">
          <label for="color">Color</label>
          <input type="text" class="form-control" id="color" name="color" placeholder="Car color in HEX">

        </div>

        <button type="submit" class="btn btn-primary">Odoslať</button>
      </form>
    </div>
  </body>
</html>
