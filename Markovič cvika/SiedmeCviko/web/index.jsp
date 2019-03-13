<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 04.04.2018
  Time: 8:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Formulár, Model, Servlet</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
    <div class="container">
      <form action="/spracuj" method="post" id="form">
        <div class="form-group">
          <label for="name">Meno</label>
          <input type="text" class="form-control" id="name" name="name" placeholder="Zadajte svoje meno">

        </div>

        <div class="form-group">
          <label for="rc">Rodne číslo</label>
          <input type="text" class="form-control" id="rc" name="rc" placeholder="Zadajte svoje rodne číslo v tvare 800101/1122">

        </div>

        <div class="form-group">
          <label for="age">Vek</label>
          <input type="number" class="form-control" id="age" name="age" placeholder="Zadajte vek">

        </div>

        <div class="form-group">
          <label for="sex">Pohlavie</label>
          <select name="sex" id="sex" class="form-control">
            <option value="1">Muž</option>
            <option value="0">Žena</option>
          </select>

        </div>

        <button type="submit" class="btn btn-primary">Odoslať</button>
      </form>
    </div>
  </body>

</html>
