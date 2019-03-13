<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 28.02.2018
  Time: 8:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DruheCvikoZachejova</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
</head>
<body>
    <div class="container">
        <form role="form" method="post" action="formular.jsp">
            <div class="form-group">
                <label for="text">SPZ</label>
                <input type="text" class="form-control" id="text">
            </div>
            <div class="form-group">
                <label for="sel1">Select:</label>
                <select class="form-control" id="sel1">
                    <option>potraviny</option>
                    <option>farba</option>
                    <option>piesok</option>
                    <option>beton</option>
                    <option>drogeria</option>
                </select>
            </div>
            <div class="form-group">
                    <label for="number">Cena</label>
                    <input type="number" class="form-control"  id="number">
            </div>
            <button type="submit" class="btn btn-default">Odoslať</button>
        </form>
    </div>
</body>
</html>
