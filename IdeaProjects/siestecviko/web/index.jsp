<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 04.04.2018
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Index</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
  <div class="container">
    <form role="form" method="post" action="/spracuj" id="formular">
      <div class="form-group">
        <label for="meno">Meno</label>
        <input type="text" class="form-control" id="meno" name="meno" placeholder="Zadajte meno">

      </div>
      <div class="form-group">
        <label for="cislo">Rodné číslo</label>
        <input type="text" class="form-control" id="cislo" name="cislo" placeholder="Zadajte rodné číslo">
      </div>

      <div class="form-group">
        <label for="vek">Vek</label>
        <input type="number" class="form-control" id="vek" name="vek" placeholder="Zadajte vek">
      </div>
    <div class="form-group">
      <label for="sex">Vyberte pohlavie</label>
      <select class="form-control" id="sex">
        <option>Žena</option>
        <option>Muž</option>
      </select>
    </div>
      <button type="submit" class="btn btn-primary">Odoslať</button>

  </form>
  </div>
  </body>
</html>
