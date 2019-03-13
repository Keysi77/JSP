<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 11.04.2018
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ukazka ajax</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
    <div class="container">
      <div id="content"></div>

      <select name="brand" id="brand" class="form-control">
        <option value="audi">Audi</option>
        <option value="bmw">Bmw</option>
        <option value="skoda">Skoda</option>
        <option value="vw">VW</option>
      </select>

      <select name="type" id="type" class="form-control">
        <option value="">-----</option>
      </select>
    </div>

  </body>
</html>
<script src="js/ajax.js"></script>