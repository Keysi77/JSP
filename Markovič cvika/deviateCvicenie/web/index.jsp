<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 19.04.2018
  Time: 8:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Produkty</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
    <div class="container">
      <form action="/insertProdukt" method="post" id="form">
        <div class="form-group">
          <label for="name">Brand</label>
          <input type="text" class="form-control" id="name" name="name" placeholder="Product name">

        </div>

        <div class="form-group">
          <label for="price">Price</label>
          <input type="text" class="form-control" id="price" name="price" placeholder="Price, 10.30">

        </div>

        <div class="form-group">
          <label for="amount">Amount</label>
          <input type="number" class="form-control" id="amount" name="amount" placeholder="Insert amount">

        </div>

        <button type="submit" class="btn btn-primary">Odoslať</button>
      </form>
    </div>
  </body>
</html>
