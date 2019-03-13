<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 24.04.2017
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>test</title>
  </head>
  <body>
  <div class="container">

    <form class="form-inline">
      <div class="form-group">
        <label class="sr-only" for="email">meno:</label>
        <input type="text" class="form-control" id="name" placeholder="meno">
      </div>

      <div class="form-group">
        <label class="sr-only" for="email">email:</label>
        <input type="email" class="form-control" id="email" placeholder="mail">
      </div>

      <button type="submit" class="btn btn-default">ulozit</button>
    </form>
  </div>


  </body>
</html>
