<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 12.04.2018
  Time: 8:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>osme cviko</title>
  <%@include file="head.jsp"%>

</head>
<body>

<div class="container">
  <form action="/spracuj" method="post" id="produkt">
    <div class="form-group">
      <label for="name">Name</label>
      <input type="text" class="form-control" id="name" name="name" placeholder="Zadajte meno">
    </div>
    <div class="form-group">
      <label for="amount">Amount</label>
      <input type="text" class="form-control" id="amount" name="amount" placeholder="Zadajte pocet">
    </div>
    <div class="form-group">
      <label for="price">Price</label>
      <input type="text" class="form-control" id="price" name="price" placeholder="Zadajte cenu">
    </div>

    <button type="submit" class="btn btn-primary">Odoslať</button>
  </form>
</div>

</body>
</html>
