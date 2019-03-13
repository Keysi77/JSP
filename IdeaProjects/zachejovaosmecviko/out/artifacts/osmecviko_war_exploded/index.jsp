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
  <form action="/spracuj" method="post" id="form1">
    <div class="form-group">
      <label for="brand">Značka</label>
      <input type="text" class="form-control" id="brand" name="brand" placeholder="Zadajte znacku">
    </div>
    <div class="form-group">
      <label for="color">Farba</label>
      <input type="text" class="form-control" id="color" name="color" placeholder="Zadajte farbu">
    </div>
    <button type="submit" class="btn btn-primary">Odoslať</button>
  </form>
</div>

<script>
  $("#form1").validate({

  rules: {
        brand: {
        required: true,
        rangelength: [2, 30]
    },
        color: {
        required: true,
        rangelength: [7, 7]
    }
  },
  messages:{
      brand: {
          required: "Zadajte značku auta",
          rangelength: "Zadajte počet znakov od 2 do 30"
      },
      color: {
          required: "Zadajte farbu auta",
          rangelength: "Zadajte počet znakov 7"
      }

  }

  });

</script>
</body>
</html>
