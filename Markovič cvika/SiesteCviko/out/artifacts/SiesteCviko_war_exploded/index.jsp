<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 28.03.2018
  Time: 8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>DE / SK slovnik</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
    <div class="container">
      <form action="spracuj.jsp" method="post">
        <div class="form-group">
          <label for="deWord">DE Wort</label>
          <input type="text" class="form-control" id="deWord" name="deWord" placeholder="Wort">

        </div>
        <div class="form-group">
          <label for="skWord">DE Wort</label>
          <input type="text" class="form-control" id="skWord" name="skWord" placeholder="Slovicko">

        </div>

        <button type="submit" class="btn btn-primary">Senden / odoslať</button>
      </form>
    </div>
  </body>
</html>
